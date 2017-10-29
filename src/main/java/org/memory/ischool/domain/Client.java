package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Client {
    private Long id;
    //建档日期
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date buildtime;

    //录入时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date inputtime;

    //约访时间
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date interviewtime;

    //微信号
    private String wechat;

    //年龄
    private Integer age;

    //联系地址
    private String address;

    //学历
    private String education;

    //工作年限
    private Integer workinglife;

    //意向班级
    private Studentclass wantedclass;

    //客户类型
    private String clienttype;

    //大学入学时间
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startschooltime;

    //意向学科
    private String wantedsubject;

    //营销人员
    private Employee marketuser;

    //意向校区
    private String wantedschool;

    //来源
    private String origin;

    //QQ
    private String qq;

    //性别
    private String sex;

    //专业
    private String major;

    //意向程度
    private String wantedlevel;

    //录入人
    private Employee inputuser;

    //下次跟进时间
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date nexttime;

    //姓名
    private String username;

    //电话
    private String tel;

    //email
    private String email;

    //当前状态
    private String state;

    //关注问题
    private String concern;

    //备注
    private String remark;

    //跟踪次数
    private Integer tracktime=0;

    //上次跟踪时间
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date lasttrackdate;

    //放入学员池的时间
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date inpooltime;

    //学校名字
    private String schoolname;


    private String status;

    private String inpoolreason;

    private Boolean trackstate;
}