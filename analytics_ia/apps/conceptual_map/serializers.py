# -*- coding: utf-8 -*-

from django.contrib.auth.models import User
from rest_framework import serializers
from rest_framework_recursive.fields import RecursiveField

from .models import Concept


class ConceptSerializer(serializers.ModelSerializer):

    children = RecursiveField(
        allow_null=True,
        many=True
    )

    class Meta:
        model = Concept
        fields = ('pk', 'content', 'level', 'children')


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('pk', 'username')
