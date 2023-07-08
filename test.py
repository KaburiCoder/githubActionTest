import requests
from bs4 import BeautifulSoup

url = 'https://ridibooks.com/category/new-releases/2200'
response = requests.get(url)
response.encoding = 'utf-8'
html = response.text

print('url : ${url}')
print('html : ${html}')
soup = BeautifulSoup(html, 'html.parser')

bookservices = soup.select('.title_text')
for no, book in enumerate(bookservices, 1):
  print(no, book.text.strip())