from django.conf.urls import patterns, include, url
from django.contrib import admin
from sandbox import views
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'adandd.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^v1/', include('sandbox.urls', namespace='sandbox')),
)
