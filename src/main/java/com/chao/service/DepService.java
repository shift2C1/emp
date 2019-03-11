package com.chao.service;

import com.chao.entity.Department;
import com.chao.entity.DepartmentVO;

import java.util.List;

public interface DepService {
    void addDep(Department department);
    DepartmentVO getDeps();
    void delete(int id);
}
