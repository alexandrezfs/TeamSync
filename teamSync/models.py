from django.db import models

class SalaryMan(models.Model):
    firstname = models.CharField(max_length=200)
    lastname = models.CharField(max_length=200)


class Request(models.Model):
    salaryman = models.ForeignKey(SalaryMan)
    request_text = models.CharField(max_length=200)