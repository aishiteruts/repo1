package com.dqh.core.service.impl;

import com.dqh.core.dao.DepartmentDao;
import com.dqh.core.po.Department;
import com.dqh.core.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
@Service("DepartmentService")
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentDao departmentDao;
    @Override
    public Department selectDepartmentByDepartmentCode(String departmentCode) {
        return departmentDao.selectDepartmentByDepartmentCode(departmentCode);
    }

    @Override
    public List<Department> selectAllDepartment() {
        return departmentDao.selectAllDepartment();
    }
}
