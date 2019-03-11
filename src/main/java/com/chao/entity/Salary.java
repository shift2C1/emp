package com.chao.entity;

import lombok.Data;

@Data
public class Salary {
    private int id;
    private int empnum;
    private String ename;
    private String yearmonth;
    private double basemoney;
    private int overtime;
    private int age;
    private String check;
    private int absent;
    private double safty;
}
