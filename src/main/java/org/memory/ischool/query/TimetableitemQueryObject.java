package org.memory.ischool.query;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by zmh on 2017/8/21.
 */
@ToString
@Setter
@Getter
public class TimetableitemQueryObject extends QueryObject {

    private Long id;
    private String keyworditem;
    @JsonFormat(pattern ="yyyy-MM-dd" ,timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date begindateitem;
    @JsonFormat(pattern ="yyyy-MM-dd" ,timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date  enddateitem;
}
