#Finding the closest Starbucks and the distance to that Starbucks.

#First, calculate the distance to each Starbucks for each house, then sort for closest and save that store location and distance.




#algorithm to find distance, borrowed from "http://www.johndcook.com/blog/python_longitude_latitude/"
import math
 
def miles_distance_on_unit_sphere(lat1, long1, lat2, long2):
 
    # Convert latitude and longitude to 
    # spherical coordinates in radians.
    degrees_to_radians = math.pi/180.0
         
    # phi = 90 - latitude
    phi1 = (90.0 - lat1)*degrees_to_radians
    phi2 = (90.0 - lat2)*degrees_to_radians
         
    # theta = longitude
    theta1 = long1*degrees_to_radians
    theta2 = long2*degrees_to_radians
         
    # Compute spherical distance from spherical coordinates.
         
    # For two locations in spherical coordinates 
    # (1, theta, phi) and (1, theta', phi')
    # cosine( arc length ) = 
    #    sin phi sin phi' cos(theta-theta') + cos phi cos phi'
    # distance = rho * arc length
     
    cos = (math.sin(phi1)*math.sin(phi2)*math.cos(theta1 - theta2) + 
           math.cos(phi1)*math.cos(phi2))
    arc = math.acos( cos )
 
    # Remember to multiply arc by the radius of the earth 
    # in your favorite set of units to get length.
    # to get length in km, multiply arc by 6373
    # to get length in miles, multiply arc by 3960
    miles_distance = arc * 3960
    return miles_distance

import pandas as pd

sbux = pd.read_csv('C:/incubator/sbux.csv')

zillhomes = pd.read_csv('C:/incubator/zillhomes.csv')
zillhomes

#loop to go through and create columns in homes data for distance to each starbucks
numsbux = len(sbux)

for x in range(0,numsbux):
   zillhomes[ ( sbux ['Store ID'][x] ) ] = 'NA'

numzills = len(zillhomes)

for z in range(0,numzills):
    #get lat of home for lat1 as a
    a = zillhomes['latitude'][z]
    #get long of home for long1 as b
    b = zillhomes['longitude'][z]
    for y in range(0,numsbux):
        #get lat of sbux for lat2 as c
        c = sbux['Latitude'][y]
        #get long of sbux for long2 as d
        d = sbux['Longitude'][y]
        #get distance using lat1, long1, lat2, long2 as a,b,c,d
        zillhomes[(sbux['Store ID'] [y])][z] = miles_distance_on_unit_sphere(a, b, c, d)

#create a vector of starbucks locations
sbuxlocations = sbux['Store ID']

#finding minimum starbucks distance each house
zillhomes['Smallest Sbux Distance'] = zillhomes[sbuxlocations].min(axis=1)

#matching that distance to sbux store id
zillhomes['Closest Sbux'] = id(zillhomes[sbuxlocations].min(axis=1))
