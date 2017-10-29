package org.memory.ischool.service;


import org.memory.ischool.page.PageResult;
import org.memory.ischool.domain.Roomclass;
import org.memory.ischool.query.RoomclassQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IRoomclassService {
    int deleteByPrimaryKey(Long id);

    int insert(Roomclass roomclass);

    Roomclass selectByPrimaryKey(Long id);

    List<Roomclass> selectAll();

   int updateByPrimaryKey(Roomclass roomclass);


    PageResult pageQuery(RoomclassQueryObject qo);


    Long  getRoomclassById(Long id );

    void changState(Long id);

}
