import os
from django.http import HttpResponse


def hello_world(request):
    output_string = "<h1>Hello World from {}"
    return HttpResponse(output_string)
