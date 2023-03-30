# 动态收集 Collection of Dynamics Posts
使用[爬取B站动态列表](https://github.com/Starrah/BilibiliGetDynamics)对@A-SOUL_Official账号进行动态的爬取。
# 数据处理 Data Process
数据存储在result.json内，使用numToString.py将其中的dynamic_id加上引号，以便识别为字符串。
# 数据显示 Data Display
使用dynamics_display.html，为每个动态建立一个container，按时间倒序显示。  
每个container里加了一个超链接，点击即可打开原始动态。
## 动态分类 Dynamic Type
'type'的值决定了动态属于何种动态，共包括以下5种：
- 转发动态 （type: 1）

- 有图片动态 (type: 2)

- 视频类动态 (type: 8)

- 纯文本动态 (type: 4)

- 专栏类动态 (type: 64)
通过在dynamics_display.html手动修改scipt部分`// Loop through the JSON array and create a container for each object`循环内的json.type条件来显示不同类型的动态。
## 图片显示 Picture Display
未能成功使用爬取B站动态列表脚本保存所有图片，因此所有包含'pictures'的内容都不予显示。