import base64
import io
from django.utils import timezone
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
import numpy as np
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from PIL import Image
import tensorflow as tf
# Create your views here.

def showIntro():
    print("+++++------------------------------------------------------------------------------------------------+++++")
    print("+++++-------------------------------Chest X-Ray Denoising Service------------------------------------+++++")
    print("+++++------------------------------------------------------------------------------------------------+++++")
    print("+++++-------------------------------------Sebastián V. ----------------------------------------------+++++")
    print("+++++------------------------------------------------------------------------------------------------+++++") 


def processImage (x_ray_image):
    pil_image = Image.open(x_ray_image)
    rgb_image = pil_image.convert('RGB')
    numpy_image = np.array(rgb_image)
    numpy_image = numpy_image.astype(np.uint8)
    process_image= numpy_image/255.
    return process_image

def getModelPrediction(process_image, modelPath):
    model = tf.keras.models.load_model(modelPath)    
    result=model.predict(np.array( [process_image,] ))
    return result

def encodeResultImage(resultImage):
    image_array_scaled = (resultImage[0] * 255).astype(np.uint8)
    pillow_image = Image.fromarray(image_array_scaled)          
    buffer = io.BytesIO()
    pillow_image.save(buffer, format='JPEG')      
    encoded_image = base64.b64encode(buffer.getvalue()) 
    return encoded_image


###############---------------------------------------------------------------###########


@csrf_exempt
@api_view(['POST'])
def makePrediction(request):
        showIntro()
        print(f"Getting file info at: {timezone.localtime(timezone.now())}")
        x_ray_image= request.data['image']
        
        process_image= processImage(x_ray_image)
        
        small_latent_space_prediction= getModelPrediction(process_image, './denoising/ml_encoders/small_latent_model')
        
        medium_latent_space_prediction= getModelPrediction(process_image, './denoising/ml_encoders/medium_latent_model')
        
        large_latent_space_prediction= getModelPrediction(process_image, './denoising/ml_encoders/large_latent_model')


        encoded_image_small_latent_space= encodeResultImage(small_latent_space_prediction)
        
        encoded_image_medium_latent_space= encodeResultImage(medium_latent_space_prediction)
        
        encoded_image_large_latent_space= encodeResultImage(large_latent_space_prediction)
        
        return Response(
            {'message': 'The service is working 🧪',
             'small_latent_space_image':encoded_image_small_latent_space,
             'medium_latent_space_image':encoded_image_medium_latent_space,
             'large_latent_space_image':encoded_image_large_latent_space
             }
            ,status=status.HTTP_200_OK)
