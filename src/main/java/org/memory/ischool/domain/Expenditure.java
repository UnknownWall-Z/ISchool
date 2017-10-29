package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;

@Setter@Getter
public class Expenditure {
    private Long id;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;

    private BigDecimal amount;

    private String summary;

    private Employee handler;

    private Employee cashier;

    private String paymethod;

    private String paytype;

    private String subclass;

    private String documentnumber;

    private String subject;

    private Employee auditor;

    private Boolean state;

}