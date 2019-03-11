package com.chao.repository;

import com.chao.entity.AnounceMent;
import com.chao.entity.EmpByDep;
import com.chao.entity.Employee;
import com.chao.entity.EmployeeOnTable;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface EmployeeRepository {
    List<EmployeeOnTable> getAll(int index,int limit);
    void add(Employee employee);
    Employee getEmpByID(int id);
    void deleteByID(int id);
    List<EmpByDep> getEmpBydepID(int depid);
    AnounceMent getMsg(String adminUsername);
}
