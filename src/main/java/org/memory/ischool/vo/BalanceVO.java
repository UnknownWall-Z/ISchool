package org.memory.ischool.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.math.BigDecimal;

/**
 * Created by zmh on 2017/8/31.
 */
@Getter@Setter@ToString
public class BalanceVO {
    private Long employeeId;
    private Long indays;
    private BigDecimal basicwage;
}
