package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
public class SchoolLinkMan {


    private Long id;
    private String name;

    private Integer age;

    private Boolean gender;

    private String qq;

    private String wechat;

    private String email;

    private Boolean firstlinkman;

    private String position;

    private String department;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date birthday;

    private String introduction;

    private SchoolClient school;


}
