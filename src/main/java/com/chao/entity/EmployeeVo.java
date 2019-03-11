package com.chao.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmployeeVo {
    private int code;
    private int count;
    private String msg;
    private List<Employee> data;
}
