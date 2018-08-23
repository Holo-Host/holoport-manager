from django_limits.limiter import Limiter
from support.models import SupportSession




class SupportLimiter(Limiter):
    rules = {
        SupportSession: [
            {
                'limit': 1,
                'message': "Only support session allowed"
                #'filterset': Q(is_active=True)
            }
        ]
    }
