from django.shortcuts import render
from django.http import HttpResponse
#from django.utils import simplejson
import json
from django.views.decorators.csrf import csrf_exempt
from sandbox.models import *

def newcharacter(request):
	 context = {}
	 return render(request, 'sandbox/character.html', context)

def savenewcharacter(request):
	 
	 data = { 'stuff' : 'boobies'}
	 return HttpResponse(json.dumps(data), content_type="application/json")
	
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
		data = request.POST.dict()
		pack=""
		minmax = OsricRaceMinsMaxs.objects.all()
		for obj in minmax:
			if obj.checkRaceQualification(data):
				pack += str(obj.race_id) + ":" + obj.race + ","
		print pack
	except Exception as e:
		#print request
		print e
		pack = "nope"
	return HttpResponse(json.dumps(pack), content_type="application/json")

# Create your views here.
