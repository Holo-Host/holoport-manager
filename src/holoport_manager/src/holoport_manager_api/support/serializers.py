from django.contrib.auth.models import User, Group
from support.models import SupportSession
from rest_framework import serializers


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('url', 'username', 'email', 'groups')


class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ('url', 'name')

class SupportSessionSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = SupportSession
        fields = ('id', 'name', 'public_key')