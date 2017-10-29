package org.memory.ischool.web.controller;

import org.memory.ischool.service.IMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class MenuController extends BaseController{

    @Autowired
    private IMenuService service;

    @RequestMapping("/menu_selectSystemMenu")
    @ResponseBody
    public Object selectSystemMenu(){
       /* Session session = SecurityUtils.getSubject().getSession();
        Object menus = session.getAttribute("MENU_IN_SESSION");
        if(menus == null){
            menus = service.selectSystemMenu();
            if(((Employee)SecurityUtils.getSubject().getPrincipal()).getAdmin() ){
                session.setAttribute("MENU_IN_SESSION",menus);
                return menus;
            }else {
                CheckMenuUtil.checkMenu((List<Menu>)menus);
                session.setAttribute("MENU_IN_SESSION",menus);
            }
        }*/

        return service.selectSystemMenu();
    }

}
