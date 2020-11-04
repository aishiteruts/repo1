package com.dqh.core.service.impl;

import com.dqh.common.utils.Page;
import com.dqh.core.dao.UserDao;
import com.dqh.core.po.User;
import com.dqh.core.pojo.ResultUser;
import com.dqh.core.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("UserService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public User finUser(User user) {
        return this.userDao.finUser(user);
    }

    @Override
    public Page<ResultUser> findUserList(Integer page, Integer rows, String userName, String departmentCode) {
        ResultUser user = new ResultUser();
        if (StringUtils.isNotBlank(userName)) {
            user.setUserName(userName);
        }
        if (StringUtils.isNotBlank(departmentCode)) {
            user.setDepartmentCode(departmentCode);
        }
        // 当前页
        user.setStart((page - 1) * rows);
        // 每页数
        user.setRows(rows);
        List<ResultUser> users = userDao.selectUserList(user);
        User userForCount = new User();
        userForCount.setUserName(userName);
        userForCount.setDepartmentCode(departmentCode);
        Integer count = userDao.selectUserListCount(userForCount);
        // 创建Page返回对象
        Page<ResultUser> result = new Page<>();
        result.setPage(page);
        result.setRows(users);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public Integer selectUserListCount(User user) {
        return userDao.selectUserListCount(user);
    }

    @Override
    public int createUser(User user) {
        return userDao.createUser(user);
    }

    @Override
    public User getUserByUserCode(String userCode) {
        return userDao.getUserByUserCode(userCode);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public int deleteUser(String userCode) {
        return userDao.deleteUser(userCode);
    }

    @Override
    public int existUser(String userCode) {
        return userDao.existUser(userCode);
    }
}
