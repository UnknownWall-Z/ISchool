package org.memory.ischool.query;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by zmh on 2017/8/21.
 */
@ToString
@Setter
@Getter
public class StudentQueryObject extends QueryObject {
    private String keyword;
    private boolean upordown;
    private Long classId;
    private String state;
    private String groupType = "s.username";
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date beginTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date endTime;

    public Date getEndTime() {
        if (endTime != null) {

            Calendar now = Calendar.getInstance();
            now.setTime(endTime);
            now.set(Calendar.HOUR_OF_DAY, 23);
            now.set(Calendar.MINUTE, 59);
            now.set(Calendar.SECOND, 59);
            return now.getTime();
        }
        return null;
    }

}
