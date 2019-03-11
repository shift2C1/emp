package com.chao.entity;

import lombok.Data;

import java.util.Date;

@Data
public class AnounceMent {
    private int id;
    private String aname;//通过找出aid
    private int did;
    private String date;
    private String content;
}
