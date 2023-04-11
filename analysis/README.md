# Analysis1: 对A-SOUL510前直播的分析
数据源：../calendar_minimal_members_to510.csv  
使用工具：RStudio  
发布：RStudio生成的R Notebook（html）  
  
此分析将利用直播参与情况对A-SOUL成员的工作情况进行分析、横向对比，并尝试解答22年510事件中的一些相关问题。  
## 1. 直播次数-时间分析
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
## 2. 直播类型分析

## To-do list:
accumulative stream length, video counts, income, video length, video count