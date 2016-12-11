package com.weikun.controller;

import com.weikun.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/11.
 */
@Controller
@RequestMapping("/validate")
public class ValidateController {
    @RequestMapping("/main")
    public String main(Map map){
        System.out.println("ok");

        User user=new User();
        map.put("user",user);
        return "main";
    }
    @RequestMapping("/add")
    public String add(@Valid User user, BindingResult bind,Map map){
        if(bind.hasErrors()){
            return "main";
        }
        map.put("user",user);

        return "success";
    }
}
