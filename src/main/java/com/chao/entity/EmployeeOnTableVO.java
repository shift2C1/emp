package com.chao.entity;

import lombok.Data;

import java.util.List;

@Data
public class EmployeeOnTableVO {
    private int count;
    private String msg;
    private int code;
//    private int age;
//    private String dname;
    private List<EmployeeOnTable> data;
}
