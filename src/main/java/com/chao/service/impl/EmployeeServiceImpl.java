package com.chao.service.impl;

import com.chao.entity.*;
import com.chao.repository.EmployeeRepository;
import com.chao.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    EmployeeRepository employeeRepository;
    @Override
    public EmployeeOnTableVO getAll(int page, int limit) {
        int index=(page-1)*limit;
        EmployeeOnTableVO employeeVo =new EmployeeOnTableVO();
        employeeVo.setCode(0);
        employeeVo.setCount(1000);
        employeeVo.setMsg("");
        employeeVo.setData(employeeRepository.getAll(index,limit));
        return employeeVo;
    }

    @Override
    public void add(Employee employee) {
        employeeRepository.add(employee);
    }

    @Override
    public EmpByDepVO getEmpBydepID(int depid) {
        List<EmpByDep> employeeList=employeeRepository.getEmpBydepID(depid);
        EmpByDepVO employeeVo=new EmpByDepVO();
        employeeVo.setMsg("");
        employeeVo.setCount(1000);
        employeeVo.setCode(0);
        employeeVo.setData(employeeList);
        return employeeVo;
    }

    @Override
    public Employee getEmpByID(int id) {
        return employeeRepository.getEmpByID(id);
    }

    @Override
    public void deleteByID(int id) {
        employeeRepository.deleteByID(id);
    }

    @Override
    public AnounceMent getMsg(String adminUsername) {
        return employeeRepository.getMsg(adminUsername);
    }
}
