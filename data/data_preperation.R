library(reshape2)
library(plyr)
library(dplyr)

setwd("C:/Users/Thomas/Documents/github/03-gentrifuge/data")

perc.rank <- function(x){
  trunc(rank(x))/length(x)
} 

fix_columns <- function(x){
  x[is.na(x)] <- "0"
  x <- gsub(x, pattern = "-", replacement = "0")
  x <- gsub(x, pattern = "\\+|,| District of Columbia", replacement = "")
  if (!is.na(as.numeric(x[1]))){
  x <- as.numeric(x)
  }
  return(x)
}



gent.data <- read.csv("EdAttain_Income_HomeVal_2009_thru_2013.csv", stringsAsFactors = F)
gent.data <- colwise(fix_columns)(gent.data)

gent.data$PROP_MHV_2009 <- fix_columns(gent.data$PROP_MHV_2009)
gent.data$PROP_MHV_2013 <- fix_columns(gent.data$PROP_MHV_2013)

gent.data$PERC_MHI_2009 <- perc.rank(gent.data$PROP_MHI_2009)
gent.data$PERC_MHV_2009 <- perc.rank(gent.data$PROP_MHV_2009)
gent.data$PERC_MHV_INCREASE <- perc.rank((gent.data$PROP_MHV_2013 - gent.data$PROP_MHV_2009)/gent.data$PROP_MHV_2009)
gent.data$PERC_BA_2013 <- perc.rank(gent.data$PROP_BA_2013)

gent.data <- ddply(gent.data, .(X), function(df){
  df$eligable <- ifelse(df$PERC_MHI_2009 <= .40 & df$PERC_MHU_2009 <= .40, 1, 0)
  df$gentrified <- ifelse(df$PERC_MHV_INCREASE >= .66 & df$PERC_BA_2013 >= .66, 1, 0)
  return(df)
})

write.csv(gent.data, "gentrification_indicator.csv")