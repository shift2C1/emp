package com.chao.entity;

import lombok.Data;

import java.util.List;

@Data
//layui前端所需的json格式
public class AdminVO {
    private int code;
    private int count;
    private String msg;
    //名字必须叫data
    private List<Admin> data;
}
