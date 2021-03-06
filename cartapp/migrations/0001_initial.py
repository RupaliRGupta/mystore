# Generated by Django 2.2 on 2020-12-25 18:43

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CartModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('productIdFk', models.IntegerField()),
                ('ProductQuantity', models.IntegerField()),
                ('emailIdFk', models.EmailField(max_length=254)),
            ],
            options={
                'db_table': 'tbl_cart',
            },
        ),
    ]
