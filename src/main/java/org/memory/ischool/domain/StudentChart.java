package org.memory.ischool.domain;

import lombok.*;

import java.math.BigDecimal;

/**
 * Created by cyf on 2017/8/30.
 */
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class StudentChart {

	private Long id;
	private Object groupType;
	private BigDecimal totalPayedfee;
	private BigDecimal totalOwnedfee;
	private BigDecimal totalFinished;
}
