library(tidyverse)
setwd("D:/A-SOUL/ZJStatistics/ZJStatistics/data")
df <- read.csv("./stream_video.csv",header=T)
# add row
df <- df %>% add_row(time="2000-01-01",
                      title="Test",
                      type="xv",
                      length=114514,
                      member="XABCE",
                      nSongA=0,lenSongA=0,nDanceA=0,lenDanceA=0,
                      nSongB=0,lenSongB=0,nDanceB=0,lenDanceB=0,
                      nSongC=0,lenSongC=0,nDanceC=0,lenDanceC=0,
                      nSongD=0,lenSongD=0,nDanceD=0,lenDanceD=0,
                      nSongE=0,lenSongE=0,nDanceE=0,lenDanceE=0,
                      source="XABCE",
                      link="www.bilibili.com/",
                      other="",
                      creator='uid:3510653')
# save result
write.csv(df,"./stream_video.csv", row.names = FALSE)
