# Generated by Django 4.2.1 on 2023-06-21 13:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('carro', '0004_alter_carro_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='carro',
            name='carro_marca',
            field=models.CharField(blank=True, max_length=50),
        ),
    ]
