from rest_framework.decorators import api_view, permission_classes
from rest_framework.response import Response
from django.contrib.auth.hashers import make_password
from rest_framework.authtoken.models import Token
from django.contrib.auth import authenticate
from rest_framework.permissions import AllowAny
from django.contrib.auth import get_user_model
from .serializers import *
from .models import *

@ api_view(['GET'])
def getRoutes(request):
    routes = [
        {
            'Endpoint': '/auth/user-reg',
            'method': 'POST',
            'body': {'body': ""},
            'description': 'Initial creation of a VetGo user.' 
        },
    ]
    return Response(routes)

@api_view(['GET'])
# Allows to view without tokens.
@permission_classes([AllowAny])
def getAllUsers(request):
    users = VetGoUser.objects.all()
    seralizer = VetGoUserSeralizer(users, many=True)
    return Response(seralizer.data)

@api_view(['POST'])
@permission_classes([AllowAny])
def createUser(request):
    data = request.data
    # Once identification is determined, there will most likely be an additional field for both.
    vetgo_user = VetGoUser.objects.create(
        email=data['email'],
        password=make_password(data['password']),
        first_name = data['first_name'],
        last_name=data['last_name'],
        role=data['role']
    )
    
    if data['role'] == "vet_doc":
        new_vet_user = VeterinaryDoctor.objects.create(user=vetgo_user)
        serializer = VetDocSeralizer(new_vet_user, many=False)
    else:
        new_petown_user = PetOwner.objects.create()
        serializer = PetOwnSeralizer(new_petown_user, many=False)
    return Response(serializer.data)

@api_view(['POST'])
@permission_classes([AllowAny])
def loginUser(request):
    data = request.data
    
    user = authenticate(username=data.get('email'), 
                        password=data.get('password'))
    
    if user is not None:
        # Token -> one VetGoUser
        # VetgoUser -> many Tokens
        token, created = Token.objects.get_or_create(user=user)
        return Response({
            'token': token.key,
            'email': user.email,
            'first_name': user.first_name,
            'last_name': user.last_name
        })
    else:
        return Response({"error": "Invalid Credentials: " + data.get('email') + " | " + data.get('password')}, status=400)

