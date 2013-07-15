from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'landing.views.index', name='landing'),
    # url(r'^shotrev/', include('shotrev.foo.urls')),

    url(r'^admin/', include(admin.site.urls)),
)
