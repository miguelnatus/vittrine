from django.db import models
from django.utils import timezone
from djmoney.models.fields import MoneyField


class Categoria(models.Model):
    name = models.CharField(max_length=50)
    def __str__(self) -> str:
        return self.name

class Marca(models.Model):
    name = models.CharField(max_length=50)
    def __str__(self) -> str:
        return self.name
    
class Banner(models.Model):
    imagem = models.ImageField(blank=True, upload_to='picture/%Y/%m')
    titulo = models.CharField(max_length=50, null=True)
    texto = models.TextField(blank=True, null=True)


    def __str__(self):
        return f'{self.imagem} {self.titulo}'

    class Meta:
        verbose_name = 'Banner'
        verbose_name_plural = 'Banners'
    


class Carro(models.Model):
    # carro_marca = models.CharField(max_length=50, blank=True)
    carro_modelo = models.CharField(max_length=50)
    ano = models.CharField(max_length=50)
    km = models.CharField(max_length=50)
    valor = MoneyField(max_digits=14, decimal_places=2, default_currency='BRL', null=True, blank=True)
    valor_description = models.TextField(max_length=150, null=True, blank=True)
    motor = models.CharField(max_length=50)
    create_date = models.DateTimeField(default=timezone.now)
    description = models.TextField(blank=True)
    show = models.BooleanField(default=True)
    picture = models.ImageField(blank=True, upload_to='picture/%Y/%m')
    categoria = models.ForeignKey(
        Categoria, 
        on_delete=models.SET_NULL,
        blank=True,
        null=True
    )
    marca = models.ForeignKey(
        Marca, 
        on_delete=models.SET_NULL,
        blank=True,
        null=True
    )

    def __str__(self) -> str:
        return f'{self.marca} {self.carro_modelo}'
    

class CarroImage(models.Model):
    carro = models.ForeignKey(Carro, default=None, on_delete=models.CASCADE)
    images = models.FileField(upload_to='picture/%Y/%m')
 
    def __str__(self):
        return self.carro.carro_modelo



