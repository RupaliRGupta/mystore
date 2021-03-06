# Generated by Django 2.2 on 2020-12-27 16:55

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AdminModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(default='admin', editable=False, max_length=7)),
                ('password', models.CharField(default='admin', editable=False, max_length=7)),
                ('role', models.CharField(default='admin', editable=False, max_length=7)),
            ],
            options={
                'db_table': 'tbl_admin',
            },
        ),
        migrations.CreateModel(
            name='StaffModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
                ('email', models.CharField(max_length=30)),
                ('password', models.CharField(max_length=30)),
                ('role', models.CharField(default='staff', editable=False, max_length=7)),
            ],
            options={
                'db_table': 'tbl_staff',
            },
        ),
    ]
