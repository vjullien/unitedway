library(readxl)
df0 <- read_xlsx("2016 Original Data.xlsx")
names(df0) <- c('county','TRACT','gradrate','ccrpi',
                'grade3','grade8','lbw','childnohealth',
                'childpoverty','povertyrate','housingburden','momsnohs',
                'collegerate','adultsnoedu','adultnohealth','unemployment')

UWcensuszip <- read_excel("data/TRACT_ZIP_122014.xlsx")

# merge two data frames by ID
dfzipmap <- merge(df0,UWcensuszip,by="TRACT")

# add new column to data frame
df0$trunctract<-uwmapdata$Tract


# To get do a join for the maps of dfcomplete or (all the data) -----------

#This line secretly produces df_complete too
# source('model/UW_R_Script_final.R')
# df_index_100 <- pop.cwbcalc(dfNorm)
# df_complete$county.y <- NULL
# df_complete$county.x <- NULL
# setnames(df_complete, "weave_ct2010", "TRACT")
# df_complete$TRACT <- as.character(df_complete$TRACT)
# dfzipmapcomplete <- merge(df_complete,UWcensuszip,by="TRACT")
# rm(df_index_100,df_index)
