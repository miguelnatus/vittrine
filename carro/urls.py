from django.urls import path
from carro import views
from django.contrib import admin
from django.conf import settings 
from django.conf.urls.static import static 

app_name = 'carro'

# urlpatterns = [
#     path('', views.index, name='index'),
# ]

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('carro/<slug:slug>/', views.carro, name='carro')
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)