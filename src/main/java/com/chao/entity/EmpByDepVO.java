package com.chao.entity;

import lombok.Data;

import java.util.List;

@Data
public class EmpByDepVO {
    private int code;
    private int count;
    private String msg;
    private List<EmpByDep> data;
}
