import os
import json

with open('/etc/flask_blog_config.json', 'r') as config_file:
    config  = json.load(config_file)


class Config:
    SECRET_KEY = config.get('SECRET_KEY')
    SQLALCHEMY_DATABASE_URI = config.get('SQLALCHEMY_DATABASE_URI')
    MAIL_SERVER = 'smtp.googlemail.com'
    MAIL_PORT = 587
    MAIL_USE_TLS = True
    MAIL_USERNAME = config.get('mail_user')
    MAIL_PASSWORD = config.get('mail_pwd')
