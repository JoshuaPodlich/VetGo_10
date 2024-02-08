from django.urls import path
from . import views

urlpatterns = [
    path('routes', views.getRoutes),
    path('users', views.getAllUsers),
    path('create', views.createUser),
    path('login', views.loginUser)
]