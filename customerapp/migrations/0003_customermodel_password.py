# Generated by Django 2.2 on 2020-12-25 15:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('customerapp', '0002_customermodel_lname'),
    ]

    operations = [
        migrations.AddField(
            model_name='customermodel',
            name='password',
            field=models.CharField(default='rup', max_length=30),
            preserve_default=False,
        ),
    ]
