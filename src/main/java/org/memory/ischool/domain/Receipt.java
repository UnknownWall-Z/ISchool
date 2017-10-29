package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;

@Setter@Getter
public class Receipt {
    private Long id;

    private Student student;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;

    private BigDecimal amount;

    private Studentclass studentclass;

    private Employee payee;

    private String method;

    private String type;

    private String documentnumber;

    private Boolean bill;

    private String remark;

    private Employee marketuser;

    private String classchange;

    private Boolean state;

}