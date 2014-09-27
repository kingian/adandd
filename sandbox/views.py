from django.shortcuts import render
from django.http import HttpResponse
from django.utils import simplejson
from sandbox.models import *

def newcharacter(request):
	 context = {}
	 return render(request, 'sandbox/character.html', context)

def savenewcharacter(request):
	 
	 data = { 'stuff' : 'boobies'}
	 return HttpResponse(simplejson.dumps(data), content_type="application/json")
	
def returnOptions(request):
	package = ""
	data = OsricRaceMinsMaxs.objects.all()
	for object in data:
		 for field, val in object:
			package += "{}, {}<br />".format(field, val)
		 package += "<p />"
	return HttpResponse(package)

# Create your views here.
