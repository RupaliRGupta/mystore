from django.db import models

# Create your models here.
class OrderModel(models.Model):
	emailfk=models.EmailField()
	date=models.CharField(max_length=30)
	amount=models.FloatField()
	class Meta:
		db_table="tbl_order"