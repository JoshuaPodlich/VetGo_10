from rest_framework.decorators import api_view
from rest_framework.response import Response
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

@api_view(['POST'])
def createUser(request):
    data = request.data
    user = NotImplemented
    if data['type_user'] == "vet_doc":
        user = VeterinaryDoctor.objects.create(

        )
    else:
        user = PetOwner.objects.create(
            
        )
    # Create seralizer and file for it!
    return Response()
