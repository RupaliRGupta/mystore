# Generated by Django 2.2 on 2020-12-27 07:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('productapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='productmodel',
            name='description',
            field=models.CharField(max_length=300),
        ),
    ]