package org.memory.ischool.domain;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Timetableitem {
    private Long id;

    @JsonFormat(pattern = "yyyy-MM-dd" , timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date schooltime;            //上课时间

    private String coursetitle;         //课程名称

    private Employee employee;          //任课老师

    private Roomclass roomclass;        //教室名

    private Studentclass studentclass;  //班级名称

    private String remark;              //备注

    private String timetableitmename;   //课程表明细名称

}