package com.dqh.core.service;

import com.dqh.common.utils.Page;
import com.dqh.core.po.User;
import com.dqh.core.pojo.ResultUser;

import java.util.List;

public interface UserService {
    public User finUser(User user);

    public Page<ResultUser> findUserList(Integer page, Integer rows, String userName, String departmentCode);

    public Integer selectUserListCount(User user);

    public int createUser(User user);

    public User getUserByUserCode(String userCode);

    public int updateUser(User user);

    public int deleteUser(String userCode);

    public int existUser(String userCode);
}
