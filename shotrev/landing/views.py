from django.shortcuts import render
from django.http import HttpResponse

def index(request):
	"""Show the website landing page with an instructional video and links to log in"""
	return render(request, 'landing/index.html')
