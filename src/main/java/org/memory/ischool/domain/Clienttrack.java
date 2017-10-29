package org.memory.ischool.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.util.StringUtils;

import java.util.Date;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Clienttrack {
    private Long id;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date inputtime;

    private Client client = new Client();

    /**
     * 跟进目的
     */
    private String purpose;

    /**
     * 咨询方式
     */
    private String consultway;

    /**
     * 摘要
     */
    private String summary;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date nexttime;

    private String filePath;

    public String getUsername(){
        return this.client.getUsername();
    }

    public String getWantedLevel(){
        return this.client.getWantedlevel();
    }

    public String getWantedschool(){
        return this.client.getWantedschool();
    }

    public String getWantedsubject(){
        return this.client.getWantedsubject();
    }
    public Employee getSaleMan(){
        return this.client.getMarketuser();
    }
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    public Date getTrackTime(){
        return this.client.getNexttime();
    }
    public String getTel(){
        return this.client.getTel();
    }

    public String getQq(){
        return this.client.getQq();
    }

    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    public Date getVisitDate(){
        return this.client.getInterviewtime();
    }

    public String getSmallImagePath() {
        if (!StringUtils.isEmpty(getFilePath())) {
            int index = getFilePath().lastIndexOf(".");
            return getFilePath().substring(0, index) + "_small" + getFilePath().substring(index);

        }
        return null;
    }



}