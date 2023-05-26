from django.shortcuts import render
from .models import Carro, CarroImage
from django.shortcuts import get_object_or_404
def index(request):
    carros = Carro.objects.all()
    return render(request, 'carro/index.html', {'carros':carros})

def carro_view(request, id):
    carro = get_object_or_404(Carro, id=id)
    photos = CarroImage.objects.filter(carro=carro)
    return render(request, 'detail.html', {
        'carro':carro,
        'photos':photos
    })
   
