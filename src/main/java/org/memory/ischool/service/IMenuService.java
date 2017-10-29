package org.memory.ischool.service;

import org.memory.ischool.domain.Menu;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IMenuService {
    int deleteByPrimaryKey(Long id);

    int insert(Menu record);

    Menu selectByPrimaryKey(Long id);

    List<Menu> selectAll();

    int updateByPrimaryKey(Menu record);

    List<Menu> selectSystemMenu();

    List<Menu> selectPermittedMenu();

    String getUrl(String moduleName);
}
