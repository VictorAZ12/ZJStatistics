# Analysis1: 对A-SOUL510前直播次数的分析
数据源：../calendar/calendar_minimal_members_to510.csv  
使用工具：RStudio  
发布：RStudio生成的R Notebook（html）  
  
此分析将利用直播参与情况对A-SOUL成员的工作情况进行分析、横向对比
## 直播次数-时间分析
添加周/月份/年份信息以方便快速定位
### 总直播次数 按成员区分
（计划使用aggregate类函数分析）
### 每周直播次数折线图
以单次直播为单位计数，以周为单位汇总，绘制成直播次数对时间的折线图。  
使用图表类型：geom_point, geom_line
### 每月直播次数折线图
以单次直播为单位计数，以月为单位汇总，绘制成直播次数对时间的折线图。  
使用图表类型：geom_point, geom_line
### 每周直播次数（按成员）
以成员参与过的直播次数为单位计数，以周为单位汇总，绘制成直播次数对时间、按成员分组的折线图
使用图表类型：geom_point, geom_line
### 每月直播次数（按成员）
以成员参与过的直播次数为单位计数，以月为单位汇总，绘制成直播次数对时间、按成员分组的折线图
使用图表类型：geom_point, geom_line  
详见analysis1.rmd，也可直接下载analysis1.nb.html查看

# Analysis 2: 对A-SOUL510前直播次数、营收与时长的分析
数据源：../stream/stream_to510.csv  
使用工具：RStudio  
发布：RStudio生成的 R Notebook (html)、视频剪辑工具制作的视频  
此分析将利用直播参与情况、营收情况对A-SOUL成员的工作情况进行分析、横向对比  
详见analysis2.rmd，也可直接下载analysis2.nb.html使用浏览器打开查看