package com.dqh.core.web.controller;

import com.dqh.common.utils.Page;
import com.dqh.core.po.Department;
import com.dqh.core.po.User;
import com.dqh.core.pojo.ResultUser;
import com.dqh.core.service.DepartmentService;
import com.dqh.core.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/user")
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private DepartmentService departmentService;

    @RequestMapping(value = "/login.action", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> login(String userCode, String userPassword, String usertype, HttpServletRequest request) {
        Map<String, String> ret = new HashMap<>();
        if (StringUtils.isEmpty(userCode)) {
            ret.put("type", "error");
            ret.put("msg", "请填写用户名！");
            return ret;
        }
        if (StringUtils.isEmpty(userPassword)) {
            ret.put("type", "error");
            ret.put("msg", "请填写密码！");
            return ret;
        }
        User userResult = new User();
        userResult.setUserCode(userCode);
        userResult.setUserPassword(userPassword);
        User user = userService.finUser(userResult);
        if (user != null) {
            request.getSession().setAttribute("USER_SESSION", user);
            ret.put("type", "success");
            ret.put("msg", "登录成功！");
            return ret;
        }
        ret.put("type", "error");
        ret.put("msg", "账号或密码错误！");
        return ret;
    }

    @RequestMapping(value = "/logout.action")
    public String logout(HttpSession session) {
        // 清除Session
        session.invalidate();
        // 重定向到登录页面的跳转方法
        return "redirect:login.action";
    }

    /**
     * 向用户登陆页面跳转
     */
    @RequestMapping(value = "/login.action", method = RequestMethod.GET)
    public String toLogin() {
        return "login";
    }

    @RequestMapping(value = "/toRegister.action", method = RequestMethod.GET)
    public String toRegister() {
        return "register";
    }

    @RequestMapping(value = "/list.action")
    public String list(@RequestParam(defaultValue = "1") Integer page,
                       @RequestParam(defaultValue = "10") Integer rows,
                       String userName, String departmentCode, Model model) {
        Page<ResultUser> users = userService.findUserList(page, rows, userName, departmentCode);
        model.addAttribute("page", users);
        List<Department> departments = departmentService.selectAllDepartment();
        Department department = departmentService.selectDepartmentByDepartmentCode(departmentCode);
        model.addAttribute("departments", departments);
        model.addAttribute("department", department);
        model.addAttribute("userName", userName);
        model.addAttribute("departmentCode", departmentCode);
        return "adminUserManager";
    }

    @RequestMapping(value = "/listOne.action")
    public String listOne(String userCode, Model model) {
        List<Department> departments = departmentService.selectAllDepartment();
        User user = userService.getUserByUserCode(userCode);
        String departmentCode = user.getDepartmentCode();
        model.addAttribute("user", user);
        model.addAttribute("departments", departments);
        model.addAttribute("departmentCode", departmentCode);
        return "userManager";
    }

    @RequestMapping("/create.action")
    @ResponseBody
    public String userCreate(User user, HttpSession session) {
        // 执行Service层中的创建方法，返回的是受影响的行数
        int rows = userService.createUser(user);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    @RequestMapping("/getUserByUserCode.action")
    @ResponseBody
    public User getUserByUserCode(String userCode) {
        User user = userService.getUserByUserCode(userCode);
        return user;
    }

    @RequestMapping("/update.action")
    @ResponseBody
    public String userUpdate(User user) {
        int rows = userService.updateUser(user);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    @RequestMapping("/delete.action")
    @ResponseBody
    public String userDelete(String userCode) {
        int rows = userService.deleteUser(userCode);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    @RequestMapping(value = "/register.action", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> register(String userCode, String userName, String userPassword, Model model) {
        Map<String,String> result = new HashMap<>();
        int exist = userService.existUser(userCode);
        if (exist > 0) {
            result.put("type","error");
            result.put("msg", "用户已存在！");
            return result;
        }
        User user = new User();
        user.setUserCode(userCode);
        user.setUserName(userName);
        user.setUserPassword(userPassword);
        int success = userService.createUser(user);
        if (success != 1) {
            result.put("type","error");
            result.put("msg", "注册失败");
            return result;
        }
        result.put("type","success");
        result.put("msg", "注册成功！");
        return result;
    }

}
