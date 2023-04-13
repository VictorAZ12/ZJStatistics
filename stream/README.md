# 统计方法
B站直播的开始时间、结束时间、营收数据来源：https://danmakus.com/live/、https://matsuri.icu/  
时间需要加上日期，以正确计算duration.  
若中间断流，则以第一次有效推流的起始和最后一次有效推流的结束为起止时间，两次推流的营收求和（如嘉然于2020年12月20日晚的直播断流两次）  
若两边推流，则以最早的推流起始和最后的推流结束为起止时间，两个直播间的营收求和（如2021年2月17日嘉贝双播，两个直播间均有推理）  

# 数据校对
## 查漏补缺
2022-02-17   嘉然 嘉然把嘉心糖藏起来啦！ 在danmakus与matsuri.icu上无数据，营收数据采用[A-SOUL数据组的专栏数据](https://space.bilibili.com/1357475736/article), 直播开始和结束的时间数据采用奶粉录播站中[弹幕xml文件](https://alist.ddindexs.com/A-SOUL/ASOUL-REC-%E4%BA%8C%E5%91%A8%E5%B9%B4/XML%E5%BC%B9%E5%B9%95%E6%96%87%E4%BB%B6)包含的信息，使用[B 站弹幕笔记](https://blog.fachep.com/2020/03/07/Danmaku/)分析，采用BililiveRecorderRecordInfo中的start_time作为开始时间，并使用其与最后一条弹幕的相对时间计算出结束时间。  
2022-03-10 嘉然 和嘉心糖们一起过的第二个生日 在danmakus上无数据，采用[matsuri.icu上的数据](https://matsuri.icu/detail/P7ZKo02H53jDxxJn)  
2020-12-12 嘉然首播 数据缺失  
2020-12-11 全团首播 数据缺失  
2022-03-16 乃琳 掉凳师傅乃琳 营收数据缺失 采用[matsuri.icu上的数据](https://matsuri.icu/detail/gZLDlVWSYwABgAXo)  
A-SOUL小剧场 第五十一期 A-SOUL劝学大会 因danmakus上数据有丢失，营收采用[matsuri.icu上的数据](https://matsuri.icu/detail/D19Zm7KcOJ0Az4pK)  
珈乐 拼搏百天 我要上	2022/02/23	珈乐 danmakus上营收数据丢失，营收采用[A-SOUL数据组的专栏数据](https://www.bilibili.com/read/cv15311324)  
向晚 珈乐 测试直播	2021/03/17	向晚, 珈乐 为抖音直播 暂无数据  
嘉然 向晚 快↓乐↑跟↗我↘走→	2021/06/30	向晚, 嘉然  因danmakus上无数据，采用[matsuri.icu上的数据](https://matsuri.icu/detail/ANPXRz5C1ZkXXwP7)  
七夕特别直播	2021/08/14	乃琳, 向晚, 嘉然, 珈乐, 贝拉 为抖音直播 暂无数据  
请查收XX小嘉然	2021/05/27	嘉然  暂无数据  
贝拉 目标是！成为情话大师！	2021/05/27	贝拉 暂无数据  
贝拉 抖音大V连线时刻	2021/07/23	贝拉 为抖音直播 暂无数据  
乃琳 看！看点儿啥呢！！！	2021/08/18	乃琳 danmakus上数据丢失，采用[matsuri.icu上的数据](https://matsuri.icu/detail/6XRxP7pUGVWqnqKk)  
向晚 嘉然 乃琳 测试直播	2021/09/05	乃琳, 向晚, 嘉然 danmakus上数据丢失，采用[matsuri.icu上的数据](https://matsuri.icu/detail/RO5V340ignW1Xq6M)  
抖音奇妙日	2021/10/16	乃琳, 向晚, 嘉然, 珈乐, 贝拉 为抖音直播 暂无数据  
珈乐 珈乐生日会	2021/11/02	乃琳, 向晚, 嘉然, 珈乐, 贝拉 danmakus上数据丢失，采用[matsuri.icu上的数据](https://matsuri.icu/detail/JZ83gR4hQQXPxVQY)  
欧莱雅联动 欧来欧来，欧气自来～	2021/11/09	乃琳, 向晚, 嘉然, 珈乐, 贝拉 为工商直播，在@欧莱雅男士官方的直播间，无数据  
A-SOUL小剧场 三十七期 今天你说了算！！！	2021/11/20	乃琳, 向晚, 嘉然, 贝拉 数据丢失  
向晚 珈乐 “冷裤子”的不被钓挑战！	2021/12/08	向晚, 珈乐 danmakus上数据丢失，采用[matsuri.icu上的数据](https://matsuri.icu/channel/351609538)  
华硕天选新品发布会	2022/02/11	乃琳, 向晚, 嘉然, 珈乐, 贝拉 在@华硕天选官方UP直播间，无数据  
贝拉 哭哭~深度解密《纸嫁衣》~	2022/02/17	贝拉 直播开始和结束的时间数据采用[奶粉录播站中的xml文件](https://alist.ddindexs.com/d/A-SOUL/ASOUL-REC-%E4%BA%8C%E5%91%A8%E5%B9%B4/XML%E5%BC%B9%E5%B9%95%E6%96%87%E4%BB%B6/2022.02.17%20%E8%B4%9D%E6%8B%89%20%E5%93%AD%E5%93%AD~%E6%B7%B1%E5%BA%A6%E8%A7%A3%E5%AF%86%E3%80%8A%E7%BA%B8%E5%AB%81%E8%A1%A3%E3%80%8B~.xml)，营收数据使用[A-SOUL数据组的专栏数据](https://www.bilibili.com/read/cv15311324)  
贝拉 乃琳 双人成行 单人不行	2022/03/23	乃琳, 贝拉 danmakus上数据丢失，采用[matsuri.icu上的数据](https://matsuri.icu/detail/5Q9wOEoHWpWxNk2G)  
奇妙女孩的知识茶话会	2022/04/21	贝拉 为抖音直播，暂无数据  
A-SOUL夜谈 二十五期 假期的那些事	2021/10/06	乃琳, 向晚, 嘉然, 珈乐, 贝拉 danmakus上统计少了，采用[matsuri.icu上的数据](https://matsuri.icu/detail/vgQGBknhyyyL7m2G)
## 营收数据替换（未完成）
已知问题：danmakus的营收数据与matsuri.icu上的营收数据存在较大差异。目前绝大部分营收数据均来自damakus，少数较为明显的错误、缺失的部分按照matsuri.icu（相对齐全） -> A-SOUL数据组（仅在前二者数据缺失时使用）上的数字填写.  


