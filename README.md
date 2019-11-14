学习慕课网课程，基于springboot+elaticsearch实现了一个简易的博客检索功能，可以对博客的内容和标题进行查询

#### 软件版本
Spring Boot 2.2.1.RELEASE  
elasticsearch-analysis-ik 6.2.2  
MySql 5.7.22  
Elastic Search 6.2.2  
Logstash 6.2.2  
Kibana 6.2.2
#### 项目使用步骤
* 下载Elastic Search和Logstash
* 安装elasticsearch-analysis-ik分词器
* 导入项目目录下的**blog.sql**
* 启动**ElasticSearch**
* 把项目目录下的**mysql.conf**，放入Logstash目录下的config文件夹
* 去Logstash目录的bin文件夹执行  
``logstash -f ../config/mysql.conf``，进行同步mysql数据到ElasticSearch
* 运行``bupt.springboot.es.SpringbootEsApplication``类
* 访问``localhost:8080``，检索汉字或者英文单词，查看搜索结果
#### 界面
![搜索前](https://github.com/lhf2018/es-blog-search/blob/master/preimg/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20191114133147.png?raw=true)
![搜索后](https://github.com/lhf2018/es-blog-search/blob/master/preimg/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20191114133116.png?raw=true)