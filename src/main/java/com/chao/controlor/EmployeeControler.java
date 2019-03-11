package com.chao.controlor;

import com.chao.entity.*;
import com.chao.service.DepService;
import com.chao.service.EmployeeService;
import com.chao.service.impl.EmployeeServiceImpl;
import com.chao.util.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/emp")
@Controller
public class EmployeeControler {
    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private DepService depService;
    @GetMapping("/getall")
    //直接返回数据
    @ResponseBody
    public EmployeeOnTableVO getAllEmps(@RequestParam("limit") int limit, @RequestParam("page") int page){
        return employeeService.getAll(page,limit);
    }

    @GetMapping("/add")
    public String add(Employee employee){
        employeeService.add(employee);
        return "/jsp/emp_show_all";
    }
    @GetMapping("/getemps")
    @ResponseBody
    public List<Department> getDeps(){
        return depService.getDeps().getData();
    }

    @GetMapping("getbydep")
    @ResponseBody
    public EmpByDepVO getEmpsByDep(@RequestParam("depid") int depid){
        //通过部门查询员工
        EmpByDepVO employeeVo=employeeService.getEmpBydepID(depid);
        return employeeVo;
    }

    @GetMapping("deletebyid")
    public String deleteByID(@RequestParam("id") int id){
//        删除操作
        employeeService.deleteByID(id);
        return "/jsp/emp_show_all";
    }
    @GetMapping("getempbyid")
//    @ResponseBody
    public String getempbyid(@RequestParam("id") int id, Model model){

        Employee employee=employeeService.getEmpByID(id);
        model.addAttribute("personalinformation",employee);
        return "/jsp/emp_personal";
    }


    //读取经理发送的信件
        @GetMapping("/getmsg")
        @ResponseBody
        public AnounceMent getMsgByAdminUsername(String username){
        AnounceMent msg=employeeService.getMsg(username);
//
            return msg;
//
        }

        //获得该员工所在部门消息的总数和这个人未读的
    @GetMapping("getmsgcount")
    @ResponseBody
    public MsgCountItem getMsgCount(String username){
        MsgCountItem msgCountItem=new MsgCountItem(30,10);
        return msgCountItem;
    }
}
