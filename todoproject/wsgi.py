"""
WSGI config for todoproject project.
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'todoproject.settings')

application = get_wsgi_application()