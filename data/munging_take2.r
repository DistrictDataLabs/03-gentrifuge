library(stringr)

#in the end went into the csv in excel and manually deleted the variables that went into actually calculating
#gentrification and the variables that weren't standardized or were just there for calculation.

setwd("C:/Gentrifuge/take2")
getwd()

ACS_09_B01003 <- read.csv("ACS_09_5YR_B01003_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B01003 <- ACS_09_B01003[,c(3:ncol(ACS_09_B01003))]
subnames <- as.character(ACS_09_B01003[1,])
newnames <- str_c("ACS_09_B01003", colnames(ACS_09_B01003), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B01003) <- newernames
ACS_09_B01003 <- ACS_09_B01003[2:nrow(ACS_09_B01003),]

ACS_09_B08303 <- read.csv("ACS_09_5YR_B08303_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B08303 <- ACS_09_B08303[,c(4:ncol(ACS_09_B08303))]
subnames <- as.character(ACS_09_B08303[1,])
newnames <- str_c("ACS_09_B08303", colnames(ACS_09_B08303), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B08303) <- newernames
ACS_09_B08303 <- ACS_09_B08303[2:nrow(ACS_09_B08303),]

ACS_09_B12002 <- read.csv("ACS_09_5YR_B12002_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B12002 <- ACS_09_B12002[,c(4:ncol(ACS_09_B12002))]
subnames <- as.character(ACS_09_B12002[1,])
newnames <- str_c("ACS_09_B12002", colnames(ACS_09_B12002), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B12002) <- newernames
ACS_09_B12002 <- ACS_09_B12002[2:nrow(ACS_09_B12002),]

ACS_09_B19013 <- read.csv("ACS_09_5YR_B19013_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B19013 <- ACS_09_B19013[,c(4:ncol(ACS_09_B19013))]
subnames <- as.character(ACS_09_B19013[1,])
newnames <- str_c("ACS_09_B19013", colnames(ACS_09_B19013), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B19013) <- newernames
ACS_09_B19013 <- ACS_09_B19013[2:nrow(ACS_09_B19013),]

ACS_09_B19054 <- read.csv("ACS_09_5YR_B19054_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B19054 <- ACS_09_B19054[,c(4:ncol(ACS_09_B19054))]
subnames <- as.character(ACS_09_B19054[1,])
newnames <- str_c("ACS_09_B19054", colnames(ACS_09_B19054), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B19054) <- newernames
ACS_09_B19054 <- ACS_09_B19054[2:nrow(ACS_09_B19054),]

ACS_09_B19055 <- read.csv("ACS_09_5YR_B19055_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B19055 <- ACS_09_B19055[,c(4:ncol(ACS_09_B19055))]
subnames <- as.character(ACS_09_B19055[1,])
newnames <- str_c("ACS_09_B19055", colnames(ACS_09_B19055), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B19055) <- newernames
ACS_09_B19055 <- ACS_09_B19055[2:nrow(ACS_09_B19055),]

ACS_09_B25003 <- read.csv("ACS_09_5YR_B25003_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B25003 <- ACS_09_B25003[,c(4:ncol(ACS_09_B25003))]
subnames <- as.character(ACS_09_B25003[1,])
newnames <- str_c("ACS_09_B25003", colnames(ACS_09_B25003), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B25003) <- newernames
ACS_09_B25003 <- ACS_09_B25003[2:nrow(ACS_09_B25003),]

ACS_09_B25006 <- read.csv("ACS_09_5YR_B25006_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B25006 <- ACS_09_B25006[,c(4:ncol(ACS_09_B25006))]
subnames <- as.character(ACS_09_B25006[1,])
newnames <- str_c("ACS_09_B25006", colnames(ACS_09_B25006), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B25006) <- newernames
ACS_09_B25006 <- ACS_09_B25006[2:nrow(ACS_09_B25006),]

ACS_09_B25018 <- read.csv("ACS_09_5YR_B25018_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B25018 <- ACS_09_B25018[,c(4:ncol(ACS_09_B25018))]
subnames <- as.character(ACS_09_B25018[1,])
newnames <- str_c("ACS_09_B25018", colnames(ACS_09_B25018), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B25018) <- newernames
ACS_09_B25018 <- ACS_09_B25018[2:nrow(ACS_09_B25018),]

ACS_09_B25077 <- read.csv("ACS_09_5YR_B25077_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B25077 <- ACS_09_B25077[,c(4:ncol(ACS_09_B25077))]
subnames <- as.character(ACS_09_B25077[1,])
newnames <- str_c("ACS_09_B25077", colnames(ACS_09_B25077), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B25077) <- newernames
ACS_09_B25077 <- ACS_09_B25077[2:nrow(ACS_09_B25077),]

ACS_09_B25081 <- read.csv("ACS_09_5YR_B25081_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_B25081 <- ACS_09_B25081[,c(4:ncol(ACS_09_B25081))]
subnames <- as.character(ACS_09_B25081[1,])
newnames <- str_c("ACS_09_B25081", colnames(ACS_09_B25081), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_B25081) <- newernames
ACS_09_B25081 <- ACS_09_B25081[2:nrow(ACS_09_B25081),]

ACS_09_S1301 <- read.csv("ACS_09_5YR_S1301_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_S1301 <- ACS_09_S1301[,c(4:ncol(ACS_09_S1301))]
subnames <- as.character(ACS_09_S1301[1,])
newnames <- str_c("ACS_09_S1301", colnames(ACS_09_S1301), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_S1301) <- newernames
ACS_09_S1301 <- ACS_09_S1301[2:nrow(ACS_09_S1301),]

ACS_09_S1501 <- read.csv("ACS_09_5YR_S1501_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_S1501 <- ACS_09_S1501[,c(4:ncol(ACS_09_S1501))]
subnames <- as.character(ACS_09_S1501[1,])
newnames <- str_c("ACS_09_S1501", colnames(ACS_09_S1501), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_S1501) <- newernames
ACS_09_S1501 <- ACS_09_S1501[2:nrow(ACS_09_S1501),]

ACS_09_S1903 <- read.csv("ACS_09_5YR_S1903_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_S1903 <- ACS_09_S1903[,c(4:ncol(ACS_09_S1903))]
subnames <- as.character(ACS_09_S1903[1,])
newnames <- str_c("ACS_09_S1903", colnames(ACS_09_S1903), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_S1903) <- newernames
ACS_09_S1903 <- ACS_09_S1903[2:nrow(ACS_09_S1903),]

ACS_09_S2101 <- read.csv("ACS_09_5YR_S2101_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_S2101 <- ACS_09_S2101[,c(4:ncol(ACS_09_S2101))]
subnames <- as.character(ACS_09_S2101[1,])
newnames <- str_c("ACS_09_S2101", colnames(ACS_09_S2101), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_S2101) <- newernames
ACS_09_S2101 <- ACS_09_S2101[2:nrow(ACS_09_S2101),]

ACS_09_S2201 <- read.csv("ACS_09_5YR_S2201_with_ann.csv", stringsAsFactors = FALSE)
ACS_09_S2201 <- ACS_09_S2201[,c(4:ncol(ACS_09_S2201))]
subnames <- as.character(ACS_09_S2201[1,])
newnames <- str_c("ACS_09_S2201", colnames(ACS_09_S2201), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_09_S2201) <- newernames
ACS_09_S2201 <- ACS_09_S2201[2:nrow(ACS_09_S2201),]

ACS_13_B25077 <- read.csv("ACS_13_5YR_B25077_with_ann.csv", stringsAsFactors = FALSE)
ACS_13_B25077 <- ACS_13_B25077[,c(1:ncol(ACS_13_B25077))]
subnames <- as.character(ACS_13_B25077[1,])
newnames <- str_c("ACS_13_B25077", colnames(ACS_13_B25077), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_13_B25077) <- newernames
ACS_13_B25077 <- ACS_13_B25077[2:nrow(ACS_13_B25077),]

ACS_13_S1501 <- read.csv("ACS_13_5YR_S1501_with_ann.csv", stringsAsFactors = FALSE)
ACS_13_S1501 <- ACS_13_S1501[,c(4:ncol(ACS_13_S1501))]
subnames <- as.character(ACS_13_S1501[1,])
newnames <- str_c("ACS_13_S1501", colnames(ACS_13_S1501), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_13_S1501) <- newernames
ACS_13_S1501 <- ACS_13_S1501[2:nrow(ACS_13_S1501),]

ACS_13_S1903 <- read.csv("ACS_13_5YR_S1903_with_ann.csv", stringsAsFactors = FALSE)
ACS_13_S1903 <- ACS_13_S1903[,c(1:ncol(ACS_13_S1903))]
subnames <- as.character(ACS_13_S1903[1,])
newnames <- str_c("ACS_13_S1903", colnames(ACS_13_S1903), sep = "_")
newernames <- str_c(newnames, subnames, sep = "_")
colnames(ACS_13_S1903) <- newernames
ACS_13_S1903 <- ACS_13_S1903[2:nrow(ACS_13_S1903),]

data2013 <- merge(ACS_13_B25077, ACS_13_S1903, by.x = "ACS_13_B25077_GEO.id_Id",
                  by.y = "ACS_13_S1903_GEO.id_Id", all.x = FALSE, all.y = FALSE)
data2013 <- data2013[,c(3, 4,5,8:ncol(data2013))]
data2013 <- cbind(data2013, ACS_13_S1501)

o <- cbind(ACS_09_B01003, ACS_09_B08303, ACS_09_B12002, ACS_09_B19013, ACS_09_B19054,
           ACS_09_B19055, ACS_09_B25003, ACS_09_B25006, ACS_09_B25018, ACS_09_B25077,
           ACS_09_B25081, ACS_09_S1301, ACS_09_S1501, ACS_09_S1903, ACS_09_S2101,
           ACS_09_S2201)

zt <- merge(o, data2013, by.x = "ACS_09_B01003_GEO.display.label_Geography",
            by.y = "ACS_13_B25077_GEO.display.label_Geography", all.y = FALSE, all.x = FALSE)

o <- zt

#take out margin of error columns
moes <- grep("Margin of Error", colnames(o))
p <- o[,-(moes)]

#there were whole columns with (x) denoting missing
exes <- grep("(X)", p[5,])
q <- p[,-(exes)]

q$city <- NA
q[,"city"] <- word(q$ACS_09_B01003_GEO.display.label_Geography, 4, 5)
colnamesq <- colnames(q)
colnamesq[1] <- "Geography"
colnames(q) <- colnamesq
#ACS_09_B25077[,"city"] <- word(ACS_09_B25077$Geography, -3, -2)

citylist <- unique(q$city)

colnamesq100 <- str_c(colnamesq, "_100scale")


for (i in 1:length(citylist)) {
  
  citydata <- q[q$city == citylist[i],]
  
  #take out those with no pop
  citydata$"ACS_09_B01003_HD01_VD01_Estimate; Total" <- as.numeric(citydata$"ACS_09_B01003_HD01_VD01_Estimate; Total")
  citydata <- citydata[citydata$"ACS_09_B01003_HD01_VD01_Estimate; Total" != 0,]
  
  for (u in 3:(length(colnamesq) - 1)) {
    citydata$newcolplease <- NA
    citydata$newcolpleasemin <- min(as.numeric(citydata[,colnamesq[u]]), na.rm = TRUE)
    citydata$newcolpleasemax <- max(as.numeric(citydata[,colnamesq[u]]), na.rm = TRUE)
    citydata$newcolplease <- round((( (as.numeric(citydata[,colnamesq[u]]) - citydata$newcolpleasemin)  / 
                                   (citydata$newcolpleasemax - 
                                      citydata$newcolpleasemin) ) * 100), 2)
    names(citydata)[names(citydata) == "newcolplease"] <- colnamesq100[u]
  }
  
  #eligibility stuff
  citydata$eligiblebypop500 <- ifelse(citydata$"ACS_09_B01003_HD01_VD01_Estimate; Total" < 500, FALSE, TRUE)
  
  citydata$"ACS_09_B25077_HD01_VD01_Estimate; Median value (dollars)" <- as.numeric(citydata$"ACS_09_B25077_HD01_VD01_Estimate; Median value (dollars)")
  
  citydata$"ACS_09_B19013_HD01_VD01_Estimate; Median household income in the past 12 months (in 2009 inflation-adjusted dollars)" <-
    as.numeric(citydata$"ACS_09_B19013_HD01_VD01_Estimate; Median household income in the past 12 months (in 2009 inflation-adjusted dollars)")
  
  citydata$MedianHomeValuePercentile2009 <- round((rank(citydata$"ACS_09_B25077_HD01_VD01_Estimate; Median value (dollars)")/
                                                    length(citydata$"ACS_09_B25077_HD01_VD01_Estimate; Median value (dollars)")), 2)
  
  citydata$eligiblebyhomevalue <- ifelse(citydata$MedianHomeValuePercentile2009 <= .4, TRUE, FALSE)
  
  citydata$MedianHouseholdIncomePercentile2009 <- round(
        rank(citydata$"ACS_09_B19013_HD01_VD01_Estimate; Median household income in the past 12 months (in 2009 inflation-adjusted dollars)")/
        length(citydata$"ACS_09_B19013_HD01_VD01_Estimate; Median household income in the past 12 months (in 2009 inflation-adjusted dollars)"), 2)
  
  citydata$eligiblebyincome <- ifelse(citydata$MedianHouseholdIncomePercentile2009 <= .4, TRUE, FALSE)
  
  citydata$ELIGIBLE_TO_GENT2009 <- ifelse(((citydata$eligiblebyincome == TRUE & citydata$eligiblebyhomevalue == TRUE) &
                                            citydata$eligiblebypop500 == TRUE), TRUE, FALSE)
  
  citydata <- citydata[citydata$ELIGIBLE_TO_GENT2009 == TRUE,]
  
  #now actual gentrification
  #increase in educational attainment S1501
  citydata$over25BAandmore09 <-
    as.numeric(citydata$"ACS_09_S1501_HC01_EST_VC15_Total; Estimate; Population 25 years and over - Percent bachelor's degree or higher")
  
  citydata$over25pop13 <-
    as.numeric(citydata$"ACS_13_S1501_HC01_EST_VC07_Total; Estimate; Population 25 years and over")
  
  citydata$over25BA_13 <-
    as.numeric(citydata$"ACS_13_S1501_HC01_EST_VC13_Total; Estimate; Population 25 years and over - Bachelor's degree")
  
  citydata$over25grad13 <-
    as.numeric(citydata$"ACS_13_S1501_HC01_EST_VC14_Total; Estimate; Population 25 years and over - Graduate or professional degree")
  
  citydata$over25BAandmore13 <- citydata$over25BA_13 + citydata$over25grad13
  
  citydata$EdIncrease <- citydata$over25BAandmore13 - citydata$over25BAandmore09
  
  citydata$EdIncreasePos <- ifelse(citydata$EdIncrease > 0, citydata$EdIncrease, NA)
  
  citydata$EdIncreasePercentile <- round((rank(citydata$EdIncreasePos) / length(citydata$EdIncreasePos)), 2)
  
  citydata$GentEdCriterion <- ifelse(citydata$EdIncreasePercentile > .65, TRUE, FALSE)
  
  #home value increase criteria
  citydata$mhv09 <- as.numeric(citydata$"ACS_09_B25077_HD01_VD01_Estimate; Median value (dollars)")
  citydata$mhv13 <- as.numeric(citydata$"ACS_13_B25077_HD01_VD01_Estimate; Median value (dollars)")
  
  citydata$mhvchange <- citydata$mhv13 - citydata$mhv09
  
  citydata$GentMHVposCriterion <- ifelse(citydata$mhvchange > 0, TRUE, FALSE)
  
  citydata$mhvchangePercentile <- round((rank(citydata$mhvchange) / length(citydata$mhvchange)), 2)
  
  citydata$GentMHVPctCriterion <- ifelse(citydata$mhvchangePercentile > .65, TRUE, FALSE)
  
  ###marking gentrified
  citydata$GENTRIFIED <- ifelse( ((citydata$GentMHVPctCriterion == TRUE) &
                                   (citydata$GentEdCriterion == TRUE)),
                                 TRUE, FALSE)
  
  if (i == 1) {normeddata <- citydata }
  
  if (i != 1) { normeddata <- rbind(normeddata, citydata)}
  
}


write.csv(q, "2009data.csv")

write.csv(normeddata, "2009_2013_normed.csv")
