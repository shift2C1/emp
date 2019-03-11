package com.chao.service.impl;

import com.chao.entity.Department;
import com.chao.entity.DepartmentVO;
import com.chao.repository.DepRepository;
import com.chao.service.DepService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepServiceImpl implements DepService {
    @Autowired
    private DepRepository depRepository;
    @Override
    public void addDep(Department department) {
        depRepository.addDep(department);
    }

    @Override
    public DepartmentVO getDeps() {
        DepartmentVO departmentVO=new DepartmentVO();
        departmentVO.setCode(0);
        departmentVO.setCount(1000);
        departmentVO.setMsg("");
        departmentVO.setData(depRepository.getDeps());
        return departmentVO;
    }

    @Override
    public void delete(int id) {
        depRepository.delete(id);
    }
}
