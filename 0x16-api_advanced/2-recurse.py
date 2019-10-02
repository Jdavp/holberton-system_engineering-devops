#!/usr/bin/python3
'function that queries the Reddit API and returns the number of subscribers'
import requests


def recurse(subreddit, hot_list=[], after=None):
    headers = {
        'User-Agent': 'juan'
    }

    parameters = {'after': after}

    r = requests.get('https://www.reddit.com/r/{}/hot.json'
                     .format(subreddit), headers=headers, params=parameters)
    if r:
        after2 = r.json().get("data").get('after')

        for item in r.json().get("data").get('children'):
            hot_list.append(item.get('data').get('title'))
        if after:
            return recurse(subreddit, hot_list, after2)
        else:
            return hot_list
    else:
        print(None)
