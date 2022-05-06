library(tidyverse)
library(dplyr)

battedBall = read.csv(file.choose())
advanced = read.csv(file.choose())



bball_2021 = read.csv(file.choose())
adv_2021 = read.csv(file.choose())

fangraphs_2021 = merge(bball_2021, adv_2021, 
                       by = c("Season", "Name", "Team", "playerid", "BABIP"))

################################################################################

fangraphs_2021$LD. <- gsub('[%]', '', fangraphs_2021$LD.)
fangraphs_2021$LD. <- as.numeric(fangraphs_2021$LD.)

fangraphs_2021$GB. <- gsub('[%]', '', fangraphs_2021$GB.)
fangraphs_2021$GB. <- as.numeric(fangraphs_2021$GB.)

fangraphs_2021$FB. <- gsub('[%]', '', fangraphs_2021$FB.)
fangraphs_2021$FB. <- as.numeric(fangraphs_2021$FB.)

fangraphs_2021$IFFB. <- gsub('[%]', '', fangraphs_2021$IFFB.)
fangraphs_2021$IFFB. <- as.numeric(fangraphs_2021$IFFB.)

fangraphs_2021$HR.FB <- gsub('[%]', '', fangraphs_2021$HR.FB)
fangraphs_2021$HR.FB <- as.numeric(fangraphs_2021$HR.FB)

fangraphs_2021$IFH. <- gsub('[%]', '', fangraphs_2021$IFH.)
fangraphs_2021$IFH. <- as.numeric(fangraphs_2021$IFH.)

fangraphs_2021$BUH. <- gsub('[%]', '', fangraphs_2021$BUH.)
fangraphs_2021$BUH. <- as.numeric(fangraphs_2021$BUH.)

fangraphs_2021$Pull. <- gsub('[%]', '', fangraphs_2021$Pull.)
fangraphs_2021$Pull. <- as.numeric(fangraphs_2021$Pull.)

fangraphs_2021$Cent. <- gsub('[%]', '', fangraphs_2021$Cent.)
fangraphs_2021$Cent. <- as.numeric(fangraphs_2021$Cent.)

fangraphs_2021$Oppo. <- gsub('[%]', '', fangraphs_2021$Oppo.)
fangraphs_2021$Oppo. <- as.numeric(fangraphs_2021$Oppo.)

fangraphs_2021$Soft. <- gsub('[%]', '', fangraphs_2021$Soft.)
fangraphs_2021$Soft. <- as.numeric(fangraphs_2021$Soft.)

fangraphs_2021$Med. <- gsub('[%]', '', fangraphs_2021$Med.)
fangraphs_2021$Med. <- as.numeric(fangraphs_2021$Med.)

fangraphs_2021$Hard. <- gsub('[%]', '', fangraphs_2021$Hard.)
fangraphs_2021$Hard. <- as.numeric(fangraphs_2021$Hard.)

fangraphs_2021$BB. <- gsub('[%]', '', fangraphs_2021$BB.)
fangraphs_2021$BB. <- as.numeric(fangraphs_2021$BB.)

fangraphs_2021$K. <- gsub('[%]', '', fangraphs_2021$K.)
fangraphs_2021$K. <- as.numeric(fangraphs_2021$K.)

FB_Rate <- fangraphs_2021$FB.
ISO <- fangraphs_2021$ISO

df <- data.frame(FB_Rate, ISO)

plot(df$FB_Rate, df$ISO)


################################################################################

fangraphs_2022 = merge(advanced, battedBall, 
                       by = c("Season", "Name", "Team", "playerid", "BABIP"))

fangraphs_2022$LD. <- gsub('[%]', '', fangraphs_2022$LD.)
fangraphs_2022$LD. <- as.numeric(fangraphs_2022$LD.)

fangraphs_2022$GB. <- gsub('[%]', '', fangraphs_2022$GB.)
fangraphs_2022$GB. <- as.numeric(fangraphs_2022$GB.)

fangraphs_2022$FB. <- gsub('[%]', '', fangraphs_2022$FB.)
fangraphs_2022$FB. <- as.numeric(fangraphs_2022$FB.)

fangraphs_2022$IFFB. <- gsub('[%]', '', fangraphs_2022$IFFB.)
fangraphs_2022$IFFB. <- as.numeric(fangraphs_2022$IFFB.)

fangraphs_2022$HR.FB <- gsub('[%]', '', fangraphs_2022$HR.FB)
fangraphs_2022$HR.FB <- as.numeric(fangraphs_2022$HR.FB)

fangraphs_2022$IFH. <- gsub('[%]', '', fangraphs_2022$IFH.)
fangraphs_2022$IFH. <- as.numeric(fangraphs_2022$IFH.)

fangraphs_2022$BUH. <- gsub('[%]', '', fangraphs_2022$BUH.)
fangraphs_2022$BUH. <- as.numeric(fangraphs_2022$BUH.)

fangraphs_2022$Pull. <- gsub('[%]', '', fangraphs_2022$Pull.)
fangraphs_2022$Pull. <- as.numeric(fangraphs_2022$Pull.)

fangraphs_2022$Cent. <- gsub('[%]', '', fangraphs_2022$Cent.)
fangraphs_2022$Cent. <- as.numeric(fangraphs_2022$Cent.)

fangraphs_2022$Oppo. <- gsub('[%]', '', fangraphs_2022$Oppo.)
fangraphs_2022$Oppo. <- as.numeric(fangraphs_2022$Oppo.)

fangraphs_2022$Soft. <- gsub('[%]', '', fangraphs_2022$Soft.)
fangraphs_2022$Soft. <- as.numeric(fangraphs_2022$Soft.)

fangraphs_2022$Med. <- gsub('[%]', '', fangraphs_2022$Med.)
fangraphs_2022$Med. <- as.numeric(fangraphs_2022$Med.)

fangraphs_2022$Hard. <- gsub('[%]', '', fangraphs_2022$Hard.)
fangraphs_2022$Hard. <- as.numeric(fangraphs_2022$Hard.)

fangraphs_2022$BB. <- gsub('[%]', '', fangraphs_2022$BB.)
fangraphs_2022$BB. <- as.numeric(fangraphs_2022$BB.)

fangraphs_2022$K. <- gsub('[%]', '', fangraphs_2022$K.)
fangraphs_2022$K. <- as.numeric(fangraphs_2022$K.)


FB_Rate22 <- fangraphs_2022$FB.
ISO_22 <- fangraphs_2022$ISO

df2 <- data.frame(FB_Rate22, ISO_22)

plot(df2$FB_Rate22, df2$ISO_22)
  