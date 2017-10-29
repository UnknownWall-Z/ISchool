package org.memory.ischool.query;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * Created by zmh on 2017/8/21.
 */

@Setter
@Getter
@ToString
public class SalaryQueryObject extends QueryObject {

    private String keyword;

    private Date startdate;

    private Date enddate;

    private Integer year;

    private Integer month;
}
