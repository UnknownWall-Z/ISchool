package org.memory.ischool.util;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.memory.ischool.domain.Menu;

import java.util.Iterator;
import java.util.List;

public class CheckMenuUtil {
    public static void checkMenu(List<Menu> menus) {
        Iterator<Menu> it = menus.iterator();
        while (it.hasNext()){
            Menu menu = it.next();
            if(menu.getPermission() != null){
                Subject subject = SecurityUtils.getSubject();
                if(!subject.isPermitted(menu.getPermission().getResource())){
                    it.remove();
                    continue;
                }
            }
            if(menu.getChildren().size() > 0){
                checkMenu(menu.getChildren());
            }
        }
    }
}
