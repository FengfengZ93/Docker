# print("Fengfeng ZHANG")
import os
import requests
import time

user = os.environ['USER']

while True:
    print ("Hello " + user)

    # Example of using the requests library
    response = requests.get('https://www.ibm.com/topics/docker')
    if response.status_code == 200:
        print("Request to Docker was successful.")
    else:
        print("Request to Docker was failed.")
    
    # Sleep for a while before repeating the loop
    time.sleep(5)