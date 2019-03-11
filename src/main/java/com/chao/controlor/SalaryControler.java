package com.chao.controlor;

import com.chao.entity.Salary;
import com.chao.entity.SalaryVO;
import com.chao.service.SalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RequestMapping("/salary")
@Controller
public class SalaryControler {
    @Autowired
    private SalaryService salaryService;
    @GetMapping("/getall")
    @ResponseBody
    public SalaryVO getAllSalary(int page,int limit){

        SalaryVO salaryVO=salaryService.getAll(page, limit);

        return salaryVO;
    }
    //通过月份查询员工薪资
    @GetMapping("/getbymonth")
    @ResponseBody
    public SalaryVO getByMonth(String start,String end){
        SalaryVO salaryVO=salaryService.getByMonth(start,end);
        return salaryVO;
    }
    //
    @GetMapping("/add")
    public String addSalary(){
        Salary salary=new Salary();

        salaryService.addSalary(salary);
        return "jsp/salary_show_all";
    }
    @GetMapping("getbyid")
    @ResponseBody
    public SalaryVO getByID(@RequestParam("id") int id){

        return salaryService.getByID(id);
    }
}
