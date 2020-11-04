package com.dqh.core.service;

import com.dqh.core.po.Department;
import com.dqh.core.po.NewspaperClass;

import java.util.List;

public interface DepartmentService {
    public Department selectDepartmentByDepartmentCode(String departmentCode);
    public List<Department> selectAllDepartment();
}
