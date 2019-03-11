package com.chao.repository;

import com.chao.entity.Admin;
import com.chao.entity.AnounceMent;

import java.util.List;

public interface AdminManageRepository {
    Admin getAdminInfo(String username);
    void updatePassword(Admin admin);
    void addAdmin(Admin admin);
    void deleteAdmin(Admin admin);
    List<Admin> getAllAdmins(int index,int limit);
    Admin checkOldPass(Admin admin);
    void storeAnoucement(AnounceMent anounceMent);
}
