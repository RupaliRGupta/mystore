# Generated by Django 2.2 on 2020-12-27 16:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('customerapp', '0005_auto_20201225_0804'),
    ]

    operations = [
        migrations.AddField(
            model_name='customermodel',
            name='role',
            field=models.CharField(default='user', editable=False, max_length=7),
        ),
    ]
