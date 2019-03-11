package com.chao.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DepartmentVO {
    private int code;
    private int count;
    private String msg;
    private List<Department> data;
}
