package org.memory.ischool.domain;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter@Setter
public class Menu {
    private Long id;

    private String text;

    private String url;

    private Menu parent;

    private List<Menu> children = new ArrayList<>();

    private Permission permission;

}