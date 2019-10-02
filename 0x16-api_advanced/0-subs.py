#!/usr/bin/python3
'function that queries the Reddit API and returns the number of subscribers'
import requests


def number_of_subscribers(subreddit):
    headers = {
        'User-Agent': 'juan'
    }

    r = requests.get('https://www.reddit.com/r/{}/about.json'
                     .format(subreddit), headers=headers)
    if r:
        return (r.json().get("data").get('subscribers'))
    else:
        return (0)
