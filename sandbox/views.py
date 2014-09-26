from django.shortcuts import render
from django.http import HttpResponse
from django.utils import simplejson

def newcharacter(request):
	 context = {}
	 return render(request, 'sandbox/character.html', context)

def savenewcharacter(request):
	 
	 data = { 'stuff' : 'boobies'}
	 return HttpResponse(simplejson.dumps(data), content_type="application/json")

# Create your views here.
