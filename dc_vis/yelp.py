# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import rauth
import time
            
def request_data(params = None):
    
    # Access Keys    
    consumer_key = "KC7ZrNuEc313rMW1ijZRYA"
    consumer_secret = "1c9ZQDqegVI1vJzgvTDp07jocV8"
    token = "UBFBhQhb1QOzCel4AZ5gbFphlDIaTtF7"
    token_secret = "eGi8PfpZRQC8OG"
    
    # Activate Session
    session = rauth.OAuth1Session(
        consumer_key = consumer_key,
        consumer_secret = consumer_secret,
        access_token = token,
        access_token_secret = token_secret)
    
    request = session.get("http://api.yelp.com/v2/search", params = params)
    
    # Tranform Json APIinto Python Dict
    data = request.json()
    session.close
    
    return(data)

def get_search_parameter(lat,long):
    params = {}
    params["term"] = "restaurant"
    params['ll'] = "{},{}".format(str(lat),str(long))
    params["radius_filter"] = "2000"
    params["limit"] = "10"
    
    return params


        
    
    
    
    
    
    
    