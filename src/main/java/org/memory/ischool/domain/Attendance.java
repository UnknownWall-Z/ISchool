package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

//考勤
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Attendance {
    private Long id;
    //用户
    private Employee employee;
    //当天时间
    private Date currenttime;
    //签到时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date signintime;
    //签退时间
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date signouttime;
    //上班状态【迟到，正常】
    private String ondutystate;
    //下班状态【早退，正常】
    private String offdutystate;
    //补签时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date addsigntime;

}
