from django.conf.urls import patterns, include, url
from sandbox import views


urlpatterns = patterns('',
                       url(r'^$', views.newcharacter),
                      )

