# Generated by Django 4.2.1 on 2023-06-13 02:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('carro', '0003_alter_carro_slug'),
    ]

    operations = [
        migrations.AlterField(
            model_name='carro',
            name='slug',
            field=models.SlugField(blank=True, null=True, unique=True),
        ),
    ]
