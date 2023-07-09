from django.urls import path
from . import views

urlpatterns = [    
    path('denoising/',views.makePrediction),
]