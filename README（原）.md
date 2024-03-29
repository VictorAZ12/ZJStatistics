# 枝江数据统计 Zhijiang Statistics
## 前言 Introduction 
本项目旨在通过收集整理A-SOUL直播、短视频、动态等相关数据来为au提供量化的数据，并通过可视化工具制作成图表和视频，让粉丝能够更全面地了解A-SOUL。  
除了直接呈现客观数据外，使用这些数据还可以管中窥豹，尝试推测A-SOUL成员的工作情况。例如：只看直播，大多时候每位成员都是五个小时左右；然而假如某位成员本周表演了a支歌曲b支舞蹈，就可以通过假定每首歌曲所需的平均练习时间x和每支舞蹈的平均练习时间y，进而估算出在直播以外的训练时间a\*x+b\*y。  
本项目力求保证数据准确、客观。准确，即记录的数据和客观情况相符；客观，即只考虑客观存在的数据和通过人为总结的客观数据，如某位成员在某周的总直播时长、表演内容和长度，不包括成员/企划/粉丝的任何说法。后者将被作为补充数据记录。  
在取得客观数据的基础上通过提出主观的问题进行探索性数据分析（EDA），以周、月、年为单位进行区段总结等，将数据和数据能够揭示的内容呈现出来。
## 阶段 Phase
由于A-SOUL直播至今已有近两年，对数据的收集和整理不可一蹴而就，因此本项目的流程是循环式的，即：数据收集→数据分析与可视化→数据发布三个阶段进行循环。而不同阶段的分工协作模式将由项目组工作人员数量决定。  
### 数据收集与存储 Data collection and storage
#### 数据存储：文件格式
目前暂定使用csv文件存储数据，便于使用各种数据分析工具读取，如Python, R, Julia, Matlib。
#### 数据收集：变量与类型
stream_*.csv记录直播和视频数据，\*代表记录区间，每一行可有以下列：  
1. 时间 (time)：格式为yyyy-mm-dd，如2022-01-01
2. 标题(title): 该内容的标题。格式为：平台+日期+文字标题，若无标题存留则不写标题。例如：B站2022/01/31【原创音乐】《除夕》A-SOUL全新团曲MV【2022拜年纪单品】
3. 类型 (type)：两位字符，平台加类型。平台位为b（bilibili），d（抖音），x（其他平台），类型位为s（直播），v（视频）
4. 时长 (length)：单位为秒。视频取视频长度，直播取推流时长，因上播前准备和下播后收拾和可能的回马枪都应包括在工作时间内。(可酌情修改为开始时间/结束时间)  
5. 成员 (member)：“直接参与”了该内容的成员，使用字母表示参与和未参与。如某次团播有贝拉、嘉然、乃琳三人出镜，同时有电话连线向晚的环节，这种情况应填写BDE，除非连线时间占到本次直播时间的1/2以上。再如假设某次抖音短视频为全手绘动画，有向晚、贝拉、嘉然、乃琳出镜，但只有向晚、乃琳的声音，这种情况下应填写AE。假如某次视频有不能判断演员的羊驼出场，则记为X（阿草 hips matter!)
6. 歌曲数量(nSong)：分为五列，表示成员该内容中演唱歌曲的数量。哼唱、随口唱不计入内。
7. 歌曲长度(lenDance)：分为五列，表示成员该内容中演唱歌曲的总长度，以实际演唱长度为准，包括前奏和间奏，不包括未演唱部分。
8. 舞蹈数量(nDance)：分为五列，表示成员该内容中表演舞蹈的数量。n连跳、舞蹈剧按不同舞蹈支数计。扒舞、舞力全开不计入。
9. 舞蹈数量(lenDance)：分为五列，表示成员该内容中表演舞蹈的时长。以实际跳舞长度为准。
10. 源(source)：该内容首次发布使用的成员账号，XABCDE分别表示官号、向晚、贝拉、珈乐、嘉然、乃琳。如某视频为六个账号联合投稿，则记为XABCDE。
11. 链接(link)：创建该行时所使用的的源地址/链接
12. 其他(other)：记录其他重要信息，或留下该行数据创建者的评论 
13. 创建者(creator)：该行数据创建者的B站uid等数据，如uid:3510653  

**csv header:**  
time,title,type,length,member,nSongA,lenSongA,nDanceA,lenDanceA,nSongB,lenSongB,nDanceB,lenDanceB,nSongC,lenSongC,nDanceC,lenDanceC,nSongD,lenSongD,nDanceD,lenDanceD,nSongE,lenSongE,nDanceE,lenDanceE,source,link,other,creator  
**单行示例数据 (附列名称）：**  

|time|title|type|length|member|nSongA|lenSongA|nDanceA|lenDanceA|nSongB|lenSongB|nDanceB|lenDanceB|nSongC|lenSongC|nDanceC|lenDanceC|nSongD|lenSongD|nDanceD|lenDanceD|nSongE|lenSongE|nDanceE|lenDanceE|source|link|other|creator|  
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|  
|2000-01-01|Test|xv|114514|XABCE|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|XABCE|www.bilibili.com/||uid:3510653|  
### 数据分析与可视化 Data analysis and visualisation
### 数据发布 
## 可能有用的一些链接
[奶粉的录播站](https://rec.koifish.fans/)  

