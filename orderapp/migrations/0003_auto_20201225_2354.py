# Generated by Django 2.2 on 2020-12-26 07:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orderapp', '0002_auto_20201225_2349'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ordermodel',
            name='emailfk',
            field=models.EmailField(max_length=254),
        ),
    ]
