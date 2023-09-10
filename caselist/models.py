from django.db import models
from django.contrib.auth.models import AbstractUser, BaseUserManager
from django.utils.translation import gettext_lazy as _

class CustomUserManager(BaseUserManager):

    def create_user(self, username, email, password, **extra_fields):
        if not email:
            raise ValueError(_("The Email field must be set"))
        if not password:
            raise ValueError(_("User must have a password"))
        email = self.normalize_email(email)
        user = self.model(username=username, email=email, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user
    
class User(AbstractUser):
    name = models.CharField(max_length=100)

    objects = CustomUserManager()

    def __str__(self):
        return self.name
    
class Case(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    description = models.TextField()
    crime_type = models.CharField(max_length=100)

    def __str__(self):
        return self.name
