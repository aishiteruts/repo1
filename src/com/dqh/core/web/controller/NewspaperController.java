package com.dqh.core.web.controller;

import com.dqh.common.utils.Page;
import com.dqh.core.po.Newspaper;
import com.dqh.core.po.NewspaperClass;
import com.dqh.core.pojo.ResultNewspaper;
import com.dqh.core.service.NewspaperClassService;
import com.dqh.core.service.NewspaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 报刊管理控制器类
 */
@Controller
public class NewspaperController {
    // 依赖注入
    @Autowired
    private NewspaperService newspaperService;
    @Autowired
    private NewspaperClassService newspaperClassService;

    @RequestMapping(value = "/newspaper/list.action")
    public String list(@RequestParam(defaultValue = "1") Integer page,
                       @RequestParam(defaultValue = "10") Integer rows,
                       String newspaperName, String newspaperClassCode, @RequestParam(defaultValue = "0") Integer userType, Model model) {
        Page<ResultNewspaper> newspapers = newspaperService
                .findNewspaperList(page, rows, newspaperName,
                        newspaperClassCode);
        model.addAttribute("page", newspapers);
        List<NewspaperClass> newspaperClasses = newspaperClassService.selectAllNewspaperClass();
        NewspaperClass newspaperClass = newspaperClassService
                .selectNewspaperClassByNewspaperClassCode(newspaperClassCode);
        model.addAttribute("newspaperClasses", newspaperClasses);
        model.addAttribute("newspaperClass", newspaperClass);
        model.addAttribute("newspaperName", newspaperName);
        model.addAttribute("newspaperClassCode", newspaperClassCode);
        if (userType==1){
            return "userIndex";
        }
        return "adminIndex";
    }

    @RequestMapping("/newspaper/create.action")
    @ResponseBody
    public String newspaperCreate(Newspaper newspaper, HttpSession session) {
        // 执行Service层中的创建方法，返回的是受影响的行数
        int rows = newspaperService.createNewspaper(newspaper);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    @RequestMapping("/newspaper/getNewspaperByNewspaperCode.action")
    @ResponseBody
    public Newspaper getNewspaperByNewspaperCode(String newspaperCode) {
        Newspaper newspaper = newspaperService.getNewspaperByNewspaperCode(newspaperCode);
        return newspaper;
    }

    @RequestMapping("/newspaper/update.action")
    @ResponseBody
    public String newspaperUpdate(Newspaper newspaper) {
        int rows = newspaperService.updateNewspaper(newspaper);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    @RequestMapping("/newspaper/delete.action")
    @ResponseBody
    public String newspaperDelete(String newspaperCode) {
        int rows = newspaperService.deleteNewspaper(newspaperCode);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

}
