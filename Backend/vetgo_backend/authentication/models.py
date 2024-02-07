from django.db import models
from django.contrib.auth.models import AbstractUser, Group, Permission

class VetGoUser(AbstractUser):
    username = None
    email = models.EmailField("email address", unique=True)
    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = []

    # Required by Django to override the groups and user_permissions fields to specify unique related_names.
    groups = models.ManyToManyField(
        Group,
        verbose_name='groups',
        blank=True,
        help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.',
        related_name="vetgo_user_set",
        related_query_name="vetgo_user",
    )
    user_permissions = models.ManyToManyField(
        Permission,
        verbose_name='user permissions',
        blank=True,
        help_text='Specific permissions for this user.',
        related_name="vetgo_user_set",
        related_query_name="vetgo_user",
    )

# One-To-One Association: instances of PetOwner and VeterinaryDoctor can access all fields of the linked VetGoUser instance.

class PetOwner(models.Model):
    user = models.OneToOneField(VetGoUser, on_delete=models.CASCADE, related_name='vetgo_user_pet_owner')

class VeterinaryDoctor(models.Model):
    user = models.OneToOneField(VetGoUser, on_delete=models.CASCADE, related_name='vetgo_user_vet_doctor')
