package bupt.springboot.es.controller;

import bupt.springboot.es.entity.mysql.MysqlBlog;
import bupt.springboot.es.repository.mysql.MysqlBlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    MysqlBlogRepository mysqlBlogRepository;
    @RequestMapping("/")
    public String index(){
        List<MysqlBlog> all=mysqlBlogRepository.findAll();
        System.out.println(all.size());
        return "index.html";
    }
}
