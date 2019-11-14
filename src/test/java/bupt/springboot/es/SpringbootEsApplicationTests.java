package bupt.springboot.es;

import bupt.springboot.es.entity.es.EsBlog;
import bupt.springboot.es.entity.mysql.MysqlBlog;
import bupt.springboot.es.repository.es.EsBlogRespository;
import bupt.springboot.es.repository.mysql.MysqlBlogRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Iterator;

@SpringBootTest
class SpringbootEsApplicationTests {
    @Autowired
    EsBlogRespository esBlogRespository;
    @Autowired
    MysqlBlogRepository mysqlBlogRepository;

    @Test
    public void test1(){
        Iterable<EsBlog> all=esBlogRespository.findAll();
        Iterator<EsBlog> iterator=all.iterator();
        System.out.println(iterator.hasNext());
    }
    @Test
    public void test2(){
        Iterable<EsBlog> all=esBlogRespository.findAll();
        Iterator<EsBlog> iterator=all.iterator();
        EsBlog esBlog=iterator.next();
        System.out.println(esBlog.getCreateTime());
        System.out.println(esBlog.getAuthor());
//        System.out.println(iterator.hasNext());
    }
    @Test
    public void test3(){
        Iterable<MysqlBlog> all=mysqlBlogRepository.queryAll();
        Iterator<MysqlBlog> iterator=all.iterator();
        MysqlBlog mysqlBlog=iterator.next();
        System.out.println(mysqlBlog.getCreateTime());
        System.out.println(mysqlBlog.getAuthor());
//        System.out.println(iterator.hasNext());
    }
    @Test
    void contextLoads() {
    }

}
