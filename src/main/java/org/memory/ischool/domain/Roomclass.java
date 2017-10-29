package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;



@Getter@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
//教室管理
public class Roomclass {
    private Long id;

    private String classroom;              //教室

    private String roomlocation;           //教室位置

    private Studentclass studentclass;     //使用班级

    private Long totalstudent;             //学生总数

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date inputdate;                //使用时间

    private String remark;                 //备注

}