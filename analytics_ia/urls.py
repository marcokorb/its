"""analytics_ia URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import (
    include,
    path,
    re_path,
)

from . import views

urlpatterns = [
    path('admin/', admin.site.urls),

    re_path(r'^$', views.api_root),
    re_path(r'^api-auth/', include('rest_framework.urls')),

    # Apps
    re_path('^', include('analytics_ia.apps.knowledge_modeling.urls')),
    re_path('^', include('analytics_ia.apps.conceptual_map.urls')),
]
