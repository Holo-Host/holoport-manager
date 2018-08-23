from django.db import models
import uuid

class SupportSession(models.Model):
    name = models.CharField(max_length=30)
    public_key = models.CharField(max_length=1024)
    uuid = models.UUIDField(primary_key=False, default=uuid.uuid4, editable=False)

