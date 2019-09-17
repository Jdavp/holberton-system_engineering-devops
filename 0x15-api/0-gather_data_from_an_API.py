#!/usr/bin/python3
'script that, using this REST API, retrives information'
if __name__ == "__main__":
    import requests
    from sys import argv

    payload = {'userId': argv[1]}
    r = requests.get('https://jsonplaceholder.typicode.com/todos',
                     params=payload).json()
    payload2 = {'id': argv[1]}
    newr = requests.get('https://jsonplaceholder.typicode.com/users',
                        params=payload2).json()
    largor = len(r)
    count = 0
    name = newr[0].get('name')
    titles = []
    for y in r:
        if y.get("completed"):
            count += 1
            titles.append(y.get("title"))
    print("Employee {} is done with tasks({}/{}):".format(name, count, largor))
    for x in titles:
        print("\t {}".format(x))
