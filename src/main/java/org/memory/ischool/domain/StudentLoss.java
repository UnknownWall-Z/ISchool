package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter@Setter
public class StudentLoss {
    private Long id;

    private String name;

    private String qq;

    private String tel;

    private Integer studydays;

    private Studentclass lossclass;

    private String lossstage;

    private String lossreason;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date lossdate;

    private Employee handler;

    private Employee marketuser;

    private Boolean refund;

    private String state;

}