from django.forms import ModelForm
from django.contrib.auth.models import User
from .models import Hotel, Habitacion, Categoria_Habitacion

class FormRegistro(ModelForm):
    class Meta:
        model = User
        fields = ['id', 'username', 'first_name', 'last_name', 'email', 'password']

class FormInicioSesion(ModelForm):
    class Meta:
        model = User
        fields = ['username', 'password']