stream_video <- data.frame(time=character(),title=character(),type=character(),length=numeric(),member=character(),
                  nSongA=numeric(),lenSongA=numeric(),nDanceA=numeric(),lenDanceA=numeric(),
                  nSongB=numeric(),lenSongB=numeric(),nDanceB=numeric(),lenDanceB=numeric(),
                  nSongC=numeric(),lenSongC=numeric(),nDanceC=numeric(),lenDanceC=numeric(),
                  nSongD=numeric(),lenSongD=numeric(),nDanceD=numeric(),lenDanceD=numeric(),
                  nSongE=numeric(),lenSongE=numeric(),nDanceE=numeric(),lenDanceE=numeric(),
                  source=character(),link=character(),other=character())
write.csv(stream_video,"./stream_video.csv", row.names = FALSE)
