package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
public class SchoolTraceLog {

	//好像少了一个字段---是否被审核

	private Long id;

	private String content;


	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date talkTime;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date inputTime;
	private Integer score;
	private String scoreMsg;
	private String talkWay;
	private Employee manager;
	private Employee tracer;
	private SchoolClient client;
	private Boolean state;

	public SchoolTraceLog(Long id, String content, Date talkTime, Date inputTime, Integer score, String scoreMsg, String talkWay, Employee manager, Employee tracer, SchoolClient client) {
		this.id = id;
		this.content = content;
		this.talkTime = talkTime;
		this.inputTime = inputTime;
		this.score = score;
		this.scoreMsg = scoreMsg;
		this.talkWay = talkWay;
		this.manager = manager;
		this.tracer = tracer;
		this.client = client;
	}

	public SchoolTraceLog() {
	}
}
