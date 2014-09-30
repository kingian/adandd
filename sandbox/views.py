from django.shortcuts import render
from django.http import HttpResponse
from django.utils import simplejson
import json
from django.views.decorators.csrf import csrf_exempt
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
		package += "<p>"
		for field, val in object:
			package += "{}, {}<br />".format(field, val)
		package += "</p>"
	return HttpResponse(package)

@csrf_exempt
def testMethods(request):
	try:
		data=json.loads(request.body)
		pack = data
	except:
		pack = "nope"
	return HttpResponse(json.dumps(pack), content_type="application/json")

# Create your views here.
