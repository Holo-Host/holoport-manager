from django.db import models

class SupportSession(models.Model):
    name = models.CharField(max_length=30)
    public_key = models.CharField(max_length=1024)