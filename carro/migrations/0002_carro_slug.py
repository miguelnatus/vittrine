# Generated by Django 4.2.1 on 2023-06-13 01:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('carro', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='carro',
            name='slug',
            field=models.SlugField(default=''),
        ),
    ]
