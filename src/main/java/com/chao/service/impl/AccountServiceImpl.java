package com.chao.service.impl;

import com.chao.entity.Admin;
import com.chao.repository.AccountRepository;
//import com.chao.repository.impl.AccountRepositoryImpl;
import com.chao.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountRepository accountRepository;
    @Override
    public Admin CheckLogin(Admin admin) {

        return accountRepository.hasAdmin(admin);

    }
}
