from django.contrib.auth.models import User, Group
from support.models import SupportSession
from rest_framework import viewsets
from holoport_manager_api.support.serializers import UserSerializer, GroupSerializer, SupportSessionSerializer


class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer

class SupportSessionViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = SupportSession.objects.all()
    serializer_class = SupportSessionSerializer