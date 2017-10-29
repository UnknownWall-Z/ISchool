package org.memory.ischool.query;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
public class QueryObject {
    private int page = 1;
    private int rows = 25;
    private Long id;
    public int getStart(){
        return (page-1)*rows;
    }
}
