import requests
import json

r = requests.get('https://github.com/yeswanthy/Flask').json()
print(r.status_code)
print(r)
