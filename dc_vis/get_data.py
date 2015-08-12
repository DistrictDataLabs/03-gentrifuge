# -*- coding: utf-8 -*-
"""
Created on Sat Aug  8 19:13:43 2015

@author: Thomas
"""


import requests
import json
import rauth
from yelpapi import YelpAPI
'''
params = {"zws-id" : "X1-ZWz1a5bhbfc9aj_ac8os", "state" : "DC", "city" : "District of Columbia"}
tests = requests.get("http://www.zillow.com/webservice/GetDemographics.htm",params = params)
tests = tests.text
tests = json.dumps(tests)
'''


    
    # Access Keys    
consumer_key = "KC7ZrNuEc313rMW1ijZRYA"
consumer_secret = "1c9ZQDqegVI1vJzgvTDp07jocV8"
token = "UBFBhQhb1QOzCel4AZ5gbFphlDIaTtF7"
token_secret = "eGi8PfpZRQC8OG-6wfymQqgYbFY"


# Activate Session
session = rauth.OAuth1Session(
    consumer_key = consumer_key,
    consumer_secret = consumer_secret,
    access_token = token,
    access_token_secret = token_secret)
    
request = session.get("http://api.yelp.com/v2/business/yelp-san-francisco")
    
    # Tranform Json APIinto Python Dict
data = request.json()
    session.close
    
    return(data)

def get_search_parameter(lat,long):
    params = {}
    params["term"] = "restaurant"
    params['ll'] = "{},{}".format(str(lat),(str(log))
    params["radius_filter"] = "2000"
    params["limit"] = "10"
    
    return params