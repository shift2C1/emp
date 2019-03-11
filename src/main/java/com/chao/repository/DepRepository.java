package com.chao.repository;

import com.chao.entity.Department;

import java.util.List;


public interface DepRepository {
    void addDep(Department department);
    List<Department> getDeps();
    void delete(int id);
}
