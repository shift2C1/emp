package com.chao.controlor;

import com.chao.entity.Admin;
import com.chao.service.AccountService;
import com.chao.service.impl.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/account")
public class Account {


    //管理员登录
    @Autowired
    private AccountService accountService;
    //分化登录的类型
    @PostMapping("switchLogin")
    public String switchLogin(int level,String username,String password,HttpServletRequest request){
        Object object=null;
        Admin result=null;
        String temp;
        String path="";
        //管理员的公共部分
        //员工得创建员工类
        object=new Admin();
        Admin admin=(Admin)object;
        admin.setUsername(username);
        admin.setPassword(password);
        admin.setLevel(level);

        //加验证权限
        admin.setLevel(level);

        request.getSession().setAttribute("obj",admin);
        result=accountService.CheckLogin(admin);
        switch (level){
            case 1:
                //超管
                temp="jsp/login";
                if (result!=null){
                    temp="jsp/main";
                }

                path="redirect:/"+temp+".jsp";
                break;
            case 2 :
                //总经理
                temp="/jsp/login";
                if (result!=null){
                    temp="/jsp/main_general";
                }

                path=temp;
                break;
            case 3 :
                //部门经理
                temp="jsp/login";
                if (result!=null){
                    temp="/jsp/main_manager";
                }
                path=temp;
                break;
            case 4 :
                //员工
                path="/jsp/main_emp";
                break;
        }
        return path;
    }

//    @PostMapping(value = "/adminlogin")
//    public String login(Admin admin, ){
//
//
//    }
    //退出系统
    @RequestMapping("/quitsystem")
    public String exit(HttpServletRequest request){

        request.getSession().invalidate();
//
//gen目录下找：jsp/login.jsp
        return "redirect:/jsp/login.jsp";
    }

}
