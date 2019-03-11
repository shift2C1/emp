package com.chao.test;

import com.chao.entity.SalaryVO;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TestDate {
    public static void main(String[] args) {
        String s1="2018-03";
        String s2="2018-04";
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM");

        try {
            Date d1=simpleDateFormat.parse(s1);
            Date d2=simpleDateFormat.parse(s2);
            System.out.println(d1);
            System.out.println(d2);
            System.out.println(d1.compareTo(d2));
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}
