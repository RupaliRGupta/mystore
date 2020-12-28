from django.db import models

# Create your models here.
class ProductModel(models.Model):
	img=models.ImageField(upload_to ='images/' ,default="")
	name=models.CharField(max_length=30)
	description=models.CharField(max_length=300)
	price=models.FloatField()
	discount=models.FloatField()
	totalp=models.FloatField()
	class Meta:
		db_table='tbl_product'