import uuid
import os
import subprocess
from django.db import models
from django.core.files import File
from django.dispatch import receiver

class SupportSession(models.Model):
    name = models.CharField(max_length=30)
    public_key = models.CharField(max_length=1024)
    uuid = models.UUIDField(primary_key=False, default=uuid.uuid4, editable=False)

    def save(self, *args, **kwargs):
        #TODO refactor for sending queue msg to systemd service
        #instead of writing file directly
        directory = '/home/manager/.ssh'
        if not os.path.exists(directory):
            os.makedirs(directory)
        path = '/home/manager/.ssh/support_key'
        with open(path,'w') as f:
            with File(f) as support_key:
                support_key.write(self.public_key)
        subprocess.run(['sudo', 'systemctl', 'start', 'sshd.service'])
        super().save(*args, **kwargs)

@receiver(models.signals.post_delete, sender=SupportSession)
def auto_delete_file_on_delete(sender, instance, **kwargs):
    """
    Deletes file from filesystem
    when corresponding `SupportSession` object is deleted.
    """
    path = '/home/manager/.ssh/support_key'
    if os.path.isfile(path):
        os.remove(path)
        subprocess.run(['sudo', 'systemctl', 'stop', 'sshd.service'])
