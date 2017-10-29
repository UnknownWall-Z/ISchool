package org.memory.ischool.service.impl;

import org.memory.ischool.service.IMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Menu;
import org.memory.ischool.mapper.MenuMapper;

import java.util.List;

/**
 * Created by zmh on 2017/8/24.
 */
@Service
public class MenuServiceImpl implements IMenuService {

    @Autowired
    private MenuMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Menu menu) {
        return mapper.insert(menu);
    }

    @Override
    public Menu selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Menu> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Menu menu) {
        return mapper.updateByPrimaryKey(menu);
    }

    @Override
    public List<Menu> selectSystemMenu() {
        return mapper.selectSystemMenu();
    }

    @Override
    public List<Menu> selectPermittedMenu() {

        return null;
    }

    public String getUrl(String moduleName){
        return mapper.getUrl(moduleName);
    }
}
