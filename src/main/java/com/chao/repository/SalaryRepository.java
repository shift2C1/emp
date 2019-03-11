package com.chao.repository;

import com.chao.entity.Salary;

import java.util.Date;
import java.util.List;

public interface SalaryRepository {
    public List<Salary> getAllSalary(int index,int limit);
//    public  List<Salary> getByMonth(Date start,Date end);
    public  List<Salary> getByMonth(String start,String end);
    List<Salary> getByID(int id);
}
