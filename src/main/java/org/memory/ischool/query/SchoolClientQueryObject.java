package org.memory.ischool.query;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by zmh on 2017/8/21.
 */
@ToString
@Setter
@Getter
public class SchoolClientQueryObject extends QueryObject {
	private String schoolName;
	private String type;
	private Long recruiterId;
	private String state;
	private Long userId;

	private Integer nearTime;
	private String eagerness;
	private String importance;
	private Boolean clientState;

	public Date getNearTime() {
		if (nearTime != null) {

			Date now = new Date();
			Calendar nowDate = Calendar.getInstance();
			nowDate.setTime(now);
			nowDate.set(Calendar.DAY_OF_YEAR,
					nearTime + nowDate.get(Calendar.DAY_OF_YEAR));
			return nowDate.getTime();
		}
		return null;
	}
}
