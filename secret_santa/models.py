from django.db import models
from django.contrib.auth.models import User

class Member(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=30)
    address = models.TextField()
    target = models.ForeignKey("self", blank=True, null=True, on_delete=models.SET_NULL)
