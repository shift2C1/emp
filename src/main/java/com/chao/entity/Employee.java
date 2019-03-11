package com.chao.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee {
    private int id;
    private String name;
    private int sex;
    private int age;
    private String idcard;
    private String birthday;
    private String nation;
    private int depid;

}
