from django.shortcuts import render
from django.http import HttpResponse

def newcharacter(request):
	 context = {}
	 return render(request, 'sandbox/character.html', context)

# Create your views here.
