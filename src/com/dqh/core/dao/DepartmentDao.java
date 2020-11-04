package com.dqh.core.dao;

import com.dqh.core.po.Department;

import java.util.List;

public interface DepartmentDao {
    public Department selectDepartmentByDepartmentCode(String departmentCode);
    public List<Department> selectAllDepartment();
}
