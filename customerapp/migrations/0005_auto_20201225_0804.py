# Generated by Django 2.2 on 2020-12-25 16:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('customerapp', '0004_auto_20201225_0800'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customermodel',
            name='contact',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='customermodel',
            name='email',
            field=models.CharField(max_length=30),
        ),
    ]
