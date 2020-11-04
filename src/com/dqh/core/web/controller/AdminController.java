package com.dqh.core.web.controller;

import com.dqh.core.po.Admin;
import com.dqh.core.service.AdminService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RequestMapping("/admin")
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/login.action", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> login(String adminCode, String adminPassword, String usertype, HttpServletRequest request) {
        Map<String, String> ret = new HashMap<>();
        if (StringUtils.isEmpty(adminCode)) {
            ret.put("type", "error");
            ret.put("msg", "请填写用户名！");
            return ret;
        }
        if (StringUtils.isEmpty(adminPassword)) {
            ret.put("type", "error");
            ret.put("msg", "请填写密码！");
            return ret;
        }
        Admin adminResult = new Admin();
        adminResult.setAdminCode(adminCode);
        adminResult.setAdminPassword(adminPassword);
        Admin admin = adminService.findAdmin(adminResult);
        if (admin != null){
            request.getSession().setAttribute("USER_SESSION", admin);
            ret.put("type", "success");
            ret.put("msg", "登录成功！");
            return ret;
        }

        ret.put("type", "error");
        ret.put("msg", "账号或密码错误！");
        return ret;
    }

    /**
     * 退出登录
     */
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

}
