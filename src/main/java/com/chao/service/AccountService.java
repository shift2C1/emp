package com.chao.service;

import com.chao.entity.Admin;
import org.springframework.stereotype.Service;

@Service
public interface AccountService {
    Admin CheckLogin(Admin admin);
}
