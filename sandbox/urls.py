from django.conf.urls import patterns, include, url
from sandbox import views


urlpatterns = patterns('',
                       url(r'^new/character/', views.newcharacter),
							  url(r'new/initstats/', views.savenewcharacter),
                      )

