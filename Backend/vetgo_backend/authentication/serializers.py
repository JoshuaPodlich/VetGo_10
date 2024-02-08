from rest_framework.serializers import ModelSerializer
from .models import *

class VetGoUserSeralizer(ModelSerializer):
    class Meta:
        model = VetGoUser
        fields = '__all__'

class VetDocSeralizer(ModelSerializer):
    class Meta:
        model = VeterinaryDoctor
        fields = '__all__'

class PetOwnSeralizer(ModelSerializer):
    class Meta:
        model = PetOwner
        fields = '__all__'