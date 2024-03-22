from django.shortcuts import render
from .models import Carro, CarroImage, Banner
from django.shortcuts import get_object_or_404
from django.http import JsonResponse
def index(request):
    carros = Carro.objects.all()
    # print(carros)
    banners = Banner.objects.all()
    return render(request, 'carro/index.html', {'carros':carros,'banners':banners})

def carro(request, slug):
    carro = get_object_or_404(Carro, slug=slug)
    page = 'carro'
    # photos = CarroImage.objects.filter(carro=carro)
   
    # photos = get_object_or_404(CarroImage, carro_id=carro.id)
    photos = CarroImage.objects.filter(carro_id=carro.id)
    print(photos)
    return render(request, 'carro/carro.html', {
        'carro':carro,
        'photos':photos,
        'page': page
    })

def carroJson(request):
    carros = list(Carro.objects.values())
    return JsonResponse({'data': carros}, safe=False)

