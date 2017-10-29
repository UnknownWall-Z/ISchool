package org.memory.ischool.domain;

import lombok.*;

@AllArgsConstructor@NoArgsConstructor@ToString@Getter@Setter
public class Department {

    private Long id;

    private String sn;

    private String name;

    private Employee manage;

    private Department parent;

    private Boolean state;

}