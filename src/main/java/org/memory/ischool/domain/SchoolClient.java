package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Getter
@Setter
public class SchoolClient {
	private Long id;

	private String name;

	private String location;

	private String importance;

	private String wantedLevel;

	private Integer studentNum;

	private Integer cooperationNum;

	private String type;

	private String education;

	private String email;

	private Integer itstudentNum;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date buildingTime;

	private String schooleTel;

	private String telegraph;

	private String postcode;

	private Byte teacherNum;

	private Short allStudent;

	private String remark;

	private String introduction;

	private String wantedSubject;

	private String wantedSchool;
	private String state;

	private List<SchoolLinkMan> linkmen = new ArrayList<>();
	private Employee recruitre;

	private Employee tracer;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date lastTraceTime;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date nextTraceTime;
	private Boolean clientState;

	public String getLinkmenName() {
		if (linkmen!=null&&linkmen.size() > 0) {
			StringBuilder sb = new StringBuilder();
			for (SchoolLinkMan linkman : linkmen) {
				sb.append(linkman.getName()).append(",");
			}
			sb.delete(sb.length()-1,sb.length());
			return sb.toString();
		}
		return null;
	}


	public SchoolClient(String name, String location, String importance, String eagerness, Integer studentNum, Integer cooperationNum, String type, String education, String email, Integer itstudentNum, Date buildingTime, String schooleTel, String telegraph, String postcode, Byte teacherNum, Short allStudent, String remark, String introduction, String wantedSubject, String wantedSchool) {
		this.name = name;
		this.location = location;
		this.importance = importance;
		this.wantedLevel = eagerness;
		this.studentNum = studentNum;
		this.cooperationNum = cooperationNum;
		this.type = type;
		this.education = education;
		this.email = email;
		this.itstudentNum = itstudentNum;
		this.buildingTime = buildingTime;
		this.schooleTel = schooleTel;
		this.telegraph = telegraph;
		this.postcode = postcode;
		this.teacherNum = teacherNum;
		this.allStudent = allStudent;
		this.remark = remark;
		this.introduction = introduction;
		this.wantedSubject = wantedSubject;
		this.wantedSchool = wantedSchool;
	}

	public SchoolClient() {
	}
}