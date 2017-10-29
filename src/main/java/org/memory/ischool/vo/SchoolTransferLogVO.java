package org.memory.ischool.vo;

import lombok.*;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.SchoolClient;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by cyf on 2017/8/29.
 */
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class SchoolTransferLogVO {
	private List<SchoolClient> clientSchools=new ArrayList<>();
	private String remark;
	private Boolean auditState;
	private Employee inEmp;
}
