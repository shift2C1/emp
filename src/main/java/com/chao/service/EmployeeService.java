package com.chao.service;

import com.chao.entity.*;


public interface EmployeeService {
    EmployeeOnTableVO getAll(int page, int limit);
    void add(Employee employee);
    EmpByDepVO getEmpBydepID(int depid);
    Employee getEmpByID(int id);
    void deleteByID(int id);
    AnounceMent getMsg(String adminUsername);
}
