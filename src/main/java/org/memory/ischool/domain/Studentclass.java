package org.memory.ischool.domain;


import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
//班级管理
public class Studentclass {

    private Long id;

    private String classname;         //班级名称

    private Employee headteacher;     //班主任

    private Long tatolstudent;        //学生总数

    private Long seating;             //座位总数

    private String classlocation;     //班级地址

    private String affilliation;      //归属系

    private Boolean state=true;       //课程表状态

}