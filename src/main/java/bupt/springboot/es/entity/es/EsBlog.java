package bupt.springboot.es.entity.es;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.DateFormat;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import javax.persistence.Column;
import java.util.Date;
@Data
@Document(indexName = "blog",type = "doc",
        useServerConfiguration = true,createIndex = false)
public class EsBlog {
    @Id
    private Integer id;
    @Field(type = FieldType.Text,analyzer = "ik_max_word")
    private String title;
    @Field(type = FieldType.Text,analyzer = "ik_max_word")
    private String author;
    @Field(type = FieldType.Text,analyzer = "ik_max_word")
    private String content;
    @Field(type = FieldType.Date,format = DateFormat.custom,
            pattern = "yyyy-MM-dd HH:mm:ss||yyyy-MM-dd||epoch_millis")
    @JsonProperty("create_time")
    private Date createTime;
    @Field(value = "update_time",type = FieldType.Date,format = DateFormat.custom,
            pattern = "yyyy-MM-dd HH:mm:ss||yyyy-MM-dd||epoch_millis")
    @JsonProperty("update_time")
    private Date updateTime;
}
