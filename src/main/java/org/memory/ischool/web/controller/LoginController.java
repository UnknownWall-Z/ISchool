package org.memory.ischool.web.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zmh on 2017/8/24.
 */
@Controller
public class LoginController {


    @RequestMapping("/login")
    public String login(HttpServletRequest req){
        Subject subject = SecurityUtils.getSubject();
        System.out.println(subject.isAuthenticated());
        String failure = (String) req.getAttribute("shiroLoginFailure");
        System.out.println(failure);
        //根据不同的异常信息来提示不同的错误文字信息
        if(UnknownAccountException.class.getName().equals(failure)){
            req.setAttribute("msg","账号不存在");
        }else if(IncorrectCredentialsException.class.getName().equals(failure)){
            req.setAttribute("msg","密码错误,请重新输入");
        }else {
            req.setAttribute("msg","网络繁忙,请稍后再试");
        }
        //请求转发到登录页面*/
        return "forward:login.jsp";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest req){
        //请求转发到登录页面*/
        return "redirect:login.jsp";
    }


}
