package org.memory.ischool.service.impl;

import org.memory.ischool.mapper.RoomclassMapper;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.IRoomclassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Roomclass;
import org.memory.ischool.query.RoomclassQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class RoomclassServiceImpl implements IRoomclassService {

    @Autowired
    private RoomclassMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Roomclass roomclass) {
        return mapper.insert(roomclass);
    }

    @Override
    public Roomclass selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Roomclass> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Roomclass roomclass) {
        return mapper.updateByPrimaryKey(roomclass);
    }

    @Override
    public PageResult pageQuery(RoomclassQueryObject qo) {
        List<Roomclass> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        System.out.println(listData);
        System.out.println(totalCount);
        return new PageResult(totalCount,listData);
    }

    @Override
    public Long getRoomclassById(Long id) {
        return mapper.getRoomclassById(id);
    }

    @Override
    public void changState(Long id) {
        mapper.changState(id);
    }
}
