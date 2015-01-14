from urllib2 import urlopen

class Openurl(urlopen):
    def __init__(self, url):
        self.url = url

    def urlopen(self):
        urlopen(self.url)
