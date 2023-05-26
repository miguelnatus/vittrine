import os
from ssl import create_default_context
import sys
from datetime import datetime
from pathlib import Path
from random import choice

import django
from django.conf import settings

DJANGO_BASE_DIR = Path(__file__).parent.parent
NUMBER_OF_OBJECTS = 1000

sys.path.append(str(DJANGO_BASE_DIR))
os.environ['DJANGO_SETTINGS_MODULE'] = 'project.settings'
settings.USE_TZ = False

django.setup()

if __name__ == '__main__':
    import faker

    from carro.models import Categoria, Carro

    Carro.objects.all().delete()
    Categoria.objects.all().delete()

    fake = faker.Faker('pt_BR')
    categoria = ['Seminovos', 'Repasses', 'Zero']

    django_categoria = [Categoria(name=name) for name in categoria]

    for categoria in django_categoria:
        categoria.save()

    django_imagens = []

    for imagens in django_imagens:
        imagens.save()

    django_carro = []

    for _ in range(NUMBER_OF_OBJECTS):
        profile = fake.profile()
        carro_marca, carro_modelo = profile['name'].split(' ', 1)
        ano = fake.random_number()
        create_date: datetime = fake.date_this_year()
        description = fake.text(max_nb_chars=100)
        categoria = choice(django_categoria)

        django_carro.append(
            Carro(
                carro_marca=carro_marca,
                carro_modelo=carro_modelo,
                ano=ano,
                create_date=create_date,
                description=description,
                categoria=categoria,
                categoria=categoria,
                imagens=imagens
            )
        )

    if len(django_carro) > 0:
        Carro.objects.bulk_create(django_carro)