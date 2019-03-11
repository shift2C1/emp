package com.chao.test;

import com.chao.entity.Admin;
import com.chao.service.AccountService;
import com.chao.service.impl.AccountServiceImpl;

public class testssh {
    public static void main(String[] args) {
        AccountService accountService=new AccountServiceImpl();
        accountService.CheckLogin(new Admin());
    }
}
