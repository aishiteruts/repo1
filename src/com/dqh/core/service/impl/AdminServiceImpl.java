package com.dqh.core.service.impl;

import com.dqh.core.dao.AdminDao;
import com.dqh.core.po.Admin;
import com.dqh.core.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("AdminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

    @Override
    public Admin findAdmin(Admin admin) {
        return this.adminDao.findAdmin(admin);
    }
}
