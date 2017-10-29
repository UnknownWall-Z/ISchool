package org.memory.ischool.query;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * Created by zmh on 2017/8/21.
 */

@ToString
@Setter
@Getter
public class DepartmentQueryObject extends QueryObject {

    private String keyword;
    private Boolean stateselect;

}
