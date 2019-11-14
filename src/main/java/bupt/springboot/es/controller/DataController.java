package bupt.springboot.es.controller;

import bupt.springboot.es.entity.es.EsBlog;
import bupt.springboot.es.entity.mysql.MysqlBlog;
import bupt.springboot.es.repository.es.EsBlogRespository;
import bupt.springboot.es.repository.mysql.MysqlBlogRepository;
import lombok.Data;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class DataController {
    @Autowired
    MysqlBlogRepository mysqlBlogRepository;
    @Autowired
    EsBlogRespository esBlogRespository;
    @RequestMapping("/blogs")
    public Object blog(){
        List<MysqlBlog> mysqlBlogs=mysqlBlogRepository.queryAll();
        return mysqlBlogs;
    }
    @PostMapping("/search")
    public Object search(@RequestBody Param param){
        Map<String,Object> map=new HashMap<>();
        //统计耗时
        StopWatch stopWatch=new StopWatch();
        stopWatch.start();
        String type=param.getType();
        if(type.equalsIgnoreCase("mysql")){
            //mysql
            List<MysqlBlog> mysqlBlogs=mysqlBlogRepository.queryBlogs(param.getKeyword());
            map.put("list",mysqlBlogs);
        }else if(type.equalsIgnoreCase("es")){
            //es
            BoolQueryBuilder builder= QueryBuilders.boolQuery();
            builder.should(QueryBuilders.matchPhraseQuery("title",param.getKeyword()));
            builder.should(QueryBuilders.matchPhraseQuery("content",param.getKeyword()));
            System.out.println(builder.toString());
            Page<EsBlog> search= (Page<EsBlog>) esBlogRespository.search(builder);
            List<EsBlog> content=search.getContent();
//            System.out.println("---------"+content.get(0).getCreateTime());
//            System.out.println("------------"+content.size());
            if(content.size()>0){
                System.out.println(content.get(0).getCreateTime());
            }
            map.put("list",content);
        }else {
            return "i don't understand";
        }
        stopWatch.stop();
        long totalTimeMillis=stopWatch.getTotalTimeMillis();
        map.put("duration",totalTimeMillis);
        return map;
    }
    @Data
    public static class Param{
        //mysql  es
        private String type;
        private String keyword;
    }
}
