package com.chao.service.impl;

import com.chao.entity.Admin;
import com.chao.entity.AdminVO;
import com.chao.entity.AnounceMent;
import com.chao.repository.AdminManageRepository;
import com.chao.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AdminServiceIpml implements AdminService {
    @Autowired
    AdminManageRepository adminManageRepository;
    @Override
    public Admin checkOldPass(Admin admin) {
        return adminManageRepository.checkOldPass(admin);
    }

    @Override
    public Admin getAdminInfor(String username) {
        return adminManageRepository.getAdminInfo(username);
    }

    @Override
    public void sentAnouncement(AnounceMent anounceMent) {
        adminManageRepository.storeAnoucement(anounceMent);
    }


    @Override
    public void addAdmin(Admin admin) {
//        System.out.println(admin);
        adminManageRepository.addAdmin(admin);
    }

    @Override
    public AdminVO getAllAdmins(int page, int limit) {
        int index=(page-1)*limit;
        List<Admin> adminList=adminManageRepository.getAllAdmins(index,limit);
        //打包json？？
        AdminVO adminVO=new AdminVO();
        adminVO.setCount(0);
        adminVO.setMsg("");
        adminVO.setData(adminList);
        return adminVO;
    }

    @Override
    public void deletebyid(long id) {
        Admin admin=new Admin();
        admin.setId((int)id);
        adminManageRepository.deleteAdmin(admin);
    }

    @Override
    public void updatePassword(Admin admin) {
        adminManageRepository.updatePassword(admin);
    }
}
