package org.memory.ischool.service;

import org.memory.ischool.domain.Systemdictionary;
import org.memory.ischool.domain.Systemdictionaryitem;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ISystemdictionaryService {

    List<Systemdictionary> selectAll();

    List<Systemdictionaryitem> querySsnByItemParentSn(String ssn);

    PageResult pageQuery(QueryObject qo);
}
