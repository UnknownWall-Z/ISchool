package org.memory.ischool.domain;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Systemdictionary {
    private Long id;

    //字典编码
    private String sn;

    //字典名称
    private String name;

    private String intro;
}