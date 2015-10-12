library(reshape2)
library(plyr)
library(dplyr)
library(acs)


api.key.install(key="0a5a2fa2a4794c69a13e1bc8f6c57c60af6a4315")

# Make Your Geometry, Here I use all census tracts in Washngton DC
geo.DC <- geo.make(state = 11, county = 001, tract = "*")


# Function to get ACS Data
get.ACS.Data <- function(geometry, table){
  acs.data <- acs.fetch(geo = geometry, table.number=table, 
                        endyear = 2013, span = 5, col.names = "pretty" )
  acs.data <- data.frame(estimate(acs.data))
  return(acs.data)
}

# Write to file
write.csv(acs.data, "ACS_features.csv")






