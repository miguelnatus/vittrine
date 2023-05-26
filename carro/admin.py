from django.contrib import admin

# Register your models here.
from django.contrib import admin
from carro import models
from .models import Carro, CarroImage, Banner


class CarroImageAdmin(admin.StackedInline):
    model = models.CarroImage

class BannerAdmin(admin.StackedInline):
    model = models.Banner

@admin.register(models.Carro)
class CarroAdmin(admin.ModelAdmin):
    list_display = 'id', 'carro_modelo', 'ano',
    ordering = 'id',
    inlines = [CarroImageAdmin]
    search_fields = 'id', 'carro_modelo', 'ano',
    list_per_page = 20
    list_max_show_all = 200
    list_editable = 'carro_modelo',
    list_display_links = 'id',
    class Meta:
       model = Carro

@admin.register(models.Banner)
class BannerAdmin(admin.ModelAdmin):
    list_display = 'imagem', 'titulo',
    ordering = 'id',

@admin.register(models.Categoria)
class CategoriaAdmin(admin.ModelAdmin):
    list_display = 'name',
    ordering = 'id',

@admin.register(models.Marca)
class MarcaAdmin(admin.ModelAdmin):
    list_display = 'name',
    ordering = 'id',

@admin.register(CarroImage)
class CarroImageAdmin(admin.ModelAdmin):
    pass