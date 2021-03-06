package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
@Getter@Setter
public class Systemlog {
    private Long id;

    private Employee opuser;     //操作用户

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date optime;         //操作时间

    private String opip;         //登录IP

    private String function;     //使用功能

    private String params;       //操作参数信息

}