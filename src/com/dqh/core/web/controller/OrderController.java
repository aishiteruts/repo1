package com.dqh.core.web.controller;

import com.dqh.common.utils.Page;
import com.dqh.core.po.Order;
import com.dqh.core.po.User;
import com.dqh.core.pojo.ResultOrder;
import com.dqh.core.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RequestMapping("/order")
@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping("/subNewspaper")
    @ResponseBody
    public String subNewspaper(Order order, HttpSession session) {
        // 执行Service层中的创建方法，返回的是受影响的行数
        int rows = orderService.createOrder(order);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }
    @RequestMapping(value = "/list.action")
    public String list(@RequestParam(defaultValue = "1") Integer page,
                       @RequestParam(defaultValue = "10") Integer rows,
                       String newspaperName, String userCode, Model model) {
        Page<ResultOrder> orders = orderService.selectOrderList(page, rows, newspaperName, userCode);
        model.addAttribute("page", orders);
        model.addAttribute("newspaperName", newspaperName);
        model.addAttribute("userCode", userCode);
        return "userNewspaperManager";
    }

    @RequestMapping("/delete.action")
    @ResponseBody
    public String orderDelete(String newspaperCode, String userCode) {
        Map<String,String> map = new HashMap<>();
        map.put("newspaperCode",newspaperCode);
        map.put("userCode",userCode);
        System.out.println(map);
        int rows = orderService.deleteOrderByUserAndNewspaper(map);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

}
