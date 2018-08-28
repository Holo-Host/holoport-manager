from django.db import models
from django.core.files import File
import uuid

class SupportSession(models.Model):
    name = models.CharField(max_length=30)
    public_key = models.CharField(max_length=1024)
    uuid = models.UUIDField(primary_key=False, default=uuid.uuid4, editable=False)

    def save(self, *args, **kwargs):
        path = '/home/holoport/.ssh/support_key'
        f = open(path,'w')
        support_key = File(f)
        support_key.write(self.public_key)
        f.close()
        support_key.close()
        super().save(*args, **kwargs)