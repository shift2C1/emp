package com.chao.service;

import com.chao.entity.Salary;
import com.chao.entity.SalaryVO;

public interface SalaryService {
    public SalaryVO getAll(int page,int limit);
    public SalaryVO getByMonth(String start,String end);
    void addSalary(Salary salary);
    SalaryVO getByID(int id);
}
