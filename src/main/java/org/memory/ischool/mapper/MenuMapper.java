package org.memory.ischool.mapper;

import java.util.List;
import org.memory.ischool.domain.Menu;

public interface MenuMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Menu record);

    Menu selectByPrimaryKey(Long id);

    List<Menu> selectAll();

    int updateByPrimaryKey(Menu record);

    List<Menu> selectSystemMenu();

    String getUrl(String moduleName);
}