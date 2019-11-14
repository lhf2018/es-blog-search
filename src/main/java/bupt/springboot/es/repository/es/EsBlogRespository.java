package bupt.springboot.es.repository.es;

import bupt.springboot.es.entity.es.EsBlog;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

public interface EsBlogRespository extends ElasticsearchRepository<EsBlog,Integer> {
}
