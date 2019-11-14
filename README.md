学习慕课网课程，基于springboot+elaticsearch实现了一个简易的博客检索功能

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