package org.memory.ischool.domain;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
//课程表
public class Timetable {

    private Long id;

    private Studentclass studentclass;   //班级名称

    private Employee employee;           //班主任

    private Timetableitem timetableitem; //课程明细
}