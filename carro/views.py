from django.shortcuts import render
from .models import Carro, CarroImage, Banner
from django.shortcuts import get_object_or_404
def index(request):
    carros = Carro.objects.all()
    banners = Banner.objects.all()
    return render(request, 'carro/index.html', {'carros':carros,'banners':banners})

def carro(request, slug):
    carro = get_object_or_404(Carro, slug=slug)
    photos = CarroImage.objects.filter(carro=carro)
    return render(request, 'carro/carro.html', {
        'carro':carro,
        'photos':photos
    })
   
