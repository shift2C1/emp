package com.chao.controlor;

import com.chao.entity.Admin;
import com.chao.entity.AdminVO;
import com.chao.entity.AnounceMent;
import com.chao.service.AdminService;
import com.chao.service.impl.AdminServiceIpml;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/admin")
//@RestController//以json数据返回对象：该类的所有的方法都标记ResponceBody
public class AdminControler {
    @Autowired
    private AdminService adminService;
    @PostMapping(value = "/getadmininfor")
    @ResponseBody//单独这个方法返回json数据
    public Admin getAdminInfo(@RequestParam("username") String username){
        Admin admin=adminService.getAdminInfor(username);
        return admin;

    }
    @PostMapping("add")
    public String addAdmin(Admin admin){
        adminService.addAdmin(admin);
//        添加完跳到查看所有管理员信息，展示是否添加成功
        return "redirect:/jsp/admin_show_admins.jsp";
    }
    @GetMapping("alladmins")
    @ResponseBody
    public AdminVO getAllAdmins(@RequestParam("page") int page,@RequestParam int limit){
        AdminVO adminList=adminService.getAllAdmins(page,limit);
        return adminList;
    }
    @GetMapping("deletebyid")
    public String deletebyid(@RequestParam("id") long id){
        adminService.deletebyid(id);
        return "redirect:/jsp/admin_show_admins.jsp";
    }

    @PostMapping("updatepassword")
    public String updatepassword(Admin admin, HttpServletRequest request){
        adminService.updatePassword(admin);
        request.getSession().setAttribute("reloginmsg","修改密码需要重新登录哦");
        //改完密码重新登陆
        return "redirect:/jsp/login.jsp";
    }


    @PostMapping("checkold")
    @ResponseBody
    public int check(Admin admin){
       Admin result=adminService.checkOldPass(admin);
       int flag=0;
       if (result!=null){
           flag=1;
       }
        return flag;
    }

//    @ResponseBody
    @GetMapping("tansforadmindata")
    public String tansforadmindata( Admin admin,HttpServletRequest request){
//        Admin admin=new Admin(id,username,password,level);
        request.setAttribute("admin",admin);
        return "/jsp/admin_updatepassword";
    }

    @ResponseBody
    @PostMapping("anounce_add")

    public String sendAnouncement(String aname, int did, String content ,String date){
        String successMsg="发送成功";
        AnounceMent anounceMent=new AnounceMent();
        anounceMent.setAname(aname);
        anounceMent.setDid(did);
        anounceMent.setDate(date);
        anounceMent.setContent(content);
        adminService.sentAnouncement(anounceMent);

        return successMsg;
    }



    @ResponseBody
    @GetMapping("123")
    public String test(){
//        FileUtils.readFileToByteArray(filetodowload)
        return "111";
    }
}
