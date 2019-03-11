package com.chao.service.impl;

import com.chao.entity.Salary;
import com.chao.entity.SalaryVO;
import com.chao.repository.SalaryRepository;
import com.chao.service.SalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class SalaryServiceImpl implements SalaryService {
    @Autowired
    SalaryRepository salaryRepository;
    @Override
    public SalaryVO getAll(int page,int limit) {
        int index=(page-1)*limit;

        SalaryVO salaryVO=new SalaryVO();
        salaryVO.setMsg("");
        salaryVO.setCount(1000);
        salaryVO.setCode(0);
        List<Salary> salaryList=salaryRepository.getAllSalary(index,limit);
        salaryVO.setData(salaryList);
        return salaryVO;
    }

    @Override
    public SalaryVO getByMonth(String start, String end) {
        SalaryVO salaryVO=new SalaryVO();
        salaryVO.setMsg("");
        salaryVO.setCount(1000);
        salaryVO.setCode(0);
//        //转换日期
//        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM");
//        Date startDate= null;
//        Date endDate=null;
//        try {
//            startDate = simpleDateFormat.parse(start);
//           endDate =simpleDateFormat.parse(end);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
        start=start+"-01";
        end=end+"01";
        //查找
        List<Salary> salaryList=salaryRepository.getByMonth(start,end);
        salaryVO.setData(salaryList);
        return salaryVO;
    }

    @Override
    public void addSalary(Salary salary) {
        System.out.println(salary);
    }

    @Override
    public SalaryVO getByID(int id) {
        List<Salary> data=salaryRepository.getByID( id);
        SalaryVO salaryVO=new SalaryVO();
        salaryVO.setMsg("");
        //按照id查只有一个
        salaryVO.setCount(1);
        salaryVO.setCode(0);
        salaryVO.setData(data);
        return salaryVO;
    }
}
