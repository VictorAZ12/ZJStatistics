setwd("D:/A-SOUL/ZJStatistics/ZJStatistics/data")
df <- data.frame(time=character(),title=character(),type=character(),length=numeric(),member=character(),
                  nSongA=numeric(),lenSongA=numeric(),nDanceA=numeric(),lenDanceA=numeric(),
                  nSongB=numeric(),lenSongB=numeric(),nDanceB=numeric(),lenDanceB=numeric(),
                  nSongC=numeric(),lenSongC=numeric(),nDanceC=numeric(),lenDanceC=numeric(),
                  nSongD=numeric(),lenSongD=numeric(),nDanceD=numeric(),lenDanceD=numeric(),
                  nSongE=numeric(),lenSongE=numeric(),nDanceE=numeric(),lenDanceE=numeric(),
                  source=character(),link=character(),other=character(),creator=character())
# add a sample row for automatic type recoginition
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
                     other="null",
                     creator='uid:3510653')
write.csv(df,"./stream_video.csv", row.names = FALSE)
