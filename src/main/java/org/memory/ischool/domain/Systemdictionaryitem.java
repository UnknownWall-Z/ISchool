package org.memory.ischool.domain;

import lombok.*;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Systemdictionaryitem {
    private Long id;

    private Systemdictionary systemdictionary;

    private String name;

    private String intro;
}