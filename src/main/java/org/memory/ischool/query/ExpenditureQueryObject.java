package org.memory.ischool.query;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * Created by zmh on 2017/8/21.
 */
@ToString@Setter@Getter
public class ExpenditureQueryObject extends QueryObject {
    private String keyword;
    private Date beginDate;
    private Date endDate;
}
