package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;

@Setter@Getter
public class Student {
    private Long id;

    private String username;

    private Employee marketuser;

    private String qq;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date admission;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date lasturgedate;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date urgedate;

    private Integer urgetimes;


    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date lastpaytime;

    private String origin;

    private Integer age;

    private String sex;

    private String tel;

    private String addressnow;

    private String addresshome;

    private String university;

    private String major;

    private Integer workinglife;

    private String englishlevel;

    private Studentclass studentclass;

    private String paymethod;

    private String clienttype;

    private BigDecimal plantuition;

    private BigDecimal discountamount;

    private String realtuition;

    private BigDecimal otherfee;

    private BigDecimal otherdiscount;

    private String discountremark;

    private BigDecimal totalfee;

    private BigDecimal payedfee;

    private BigDecimal ownedfee;

    private Boolean finished;

    private String headimgpath;

    private String idnumber;

    private String emergencycontact;

    private String emergencytel;

    private String workintention;

    private String workexperience;

    private String state;

    private String email;

    private String education;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    Date upordowndate;

    Studentclass oldclass;
}