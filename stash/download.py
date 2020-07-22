import requests

username = 'yeswanthy'
password = 'Yesh #206206'
url = 'https://github.com/yeswanthy/Flask'

print(requests.get(url,auth=(username,password)).content)
