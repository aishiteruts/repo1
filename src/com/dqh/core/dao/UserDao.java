package com.dqh.core.dao;

import com.dqh.core.po.User;
import com.dqh.core.pojo.ResultUser;

import java.util.List;

public interface UserDao {
    public User finUser(User user);

    public List<ResultUser> selectUserList(ResultUser resultUser);

    public Integer selectUserListCount(User user);

    public int createUser(User user);

    public User getUserByUserCode(String userCode);

    public int updateUser(User user);

    public int deleteUser(String userCode);

    public int existUser(String userCode);
}
