#!/usr/bin/python3
'function that queries the Reddit API and returns the number of subscribers'
import requests


def top_ten(subreddit):
    headers = {
        'User-Agent': 'juan'
    }

    r = requests.get('https://www.reddit.com/r/{}/hot.json'
                     .format(subreddit), headers=headers)
    if r:
        for i in range(10):
            print(r.json().get("data").get('children')[i]
                  .get('data').get('title'))
    else:
        print(None)
