package org.memory.ischool.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.memory.ischool.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.service.IPermissionService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by zmh on 2017/8/24.
 */
public class MyRealm extends AuthorizingRealm{

    @Autowired
    private IEmployeeService employeeService;

    @Autowired
    private IPermissionService permissionService;


    /**
     * 认证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取用户输入的用户名
        String principal = (String)token.getPrincipal();
        //判断数据库中是否存在该用户名,如果没有则返回null
        Employee emp = employeeService.getEmployeeByName(principal);
        if(emp == null){
            return null;
        }
        //如果有则返回FALSE,包括一些正确凭证
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(emp, emp.getPassword(),ByteSource.Util.bytes(emp.getUsername()),this.getName());
        return info;
    }


    /**
     * 授权
     * @param principal
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
       /* Employee employee = (Employee) principal.getPrimaryPrincipal();
        List permissions = new ArrayList<String>();
        if(employee.getAdmin()){
            permissions.add("*:*");
        }else{
            System.out.println(permissionService);
            permissions = permissionService.getResourceByEmployeeId(employee.getId());
        }
        info.addStringPermissions(permissions);*/
        List permissions = new ArrayList<String>();
        permissions.add("*:*");
        info.addStringPermissions(permissions);
        return info;
    }

}
