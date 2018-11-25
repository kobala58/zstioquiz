import requests
import bs4
import collections
import webbrowser
from urllib.parse import urlencode
from urllib.request import urlretrieve

def main():
    url = 'https://fiszkoteka.pl/zestaw/49412-unit-4-praca.-longman-repetytorium-maturalne-podstawa'
    html = get_zast_page(url)
    choicses = available_zast(html)

def get_zast_page(url):
    response = requests.get(url)
    return response.text

def available_zast(html):
    soup = bs4.BeautifulSoup(html, 'html.parser')
    zasts = soup.find_all(class_='text')
    for x in zasts:
        print(x.text)
    return zasts

if __name__ == '__main__':
    main()
