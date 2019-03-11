package com.chao.service;

import com.chao.entity.Admin;
import com.chao.entity.AdminVO;
import com.chao.entity.AnounceMent;
import org.springframework.stereotype.Service;

import java.util.List;

//@Service
public interface AdminService {
    void addAdmin(Admin admin);
    AdminVO getAllAdmins(int page, int limit);
    void deletebyid(long id);
    void updatePassword(Admin admin);
    Admin checkOldPass(Admin admin);
    Admin getAdminInfor(String username);
    void sentAnouncement(AnounceMent anounceMent);
}
