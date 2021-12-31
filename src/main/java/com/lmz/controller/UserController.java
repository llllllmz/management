package com.lmz.controller;


import com.lmz.domain.User;
import com.lmz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    public UserService userService;

    @RequestMapping("/loginPage")
    public String loginPage(){
        return "login";
    }
//    @RequestMapping("/registerPage")
//    public String registerPage(){
//        return "register";
//    }

    @RequestMapping("/login")
    public String login(User user, Model model, HttpSession httpSession){
        if(userService.login(user)==null){
            model.addAttribute("username",user.getUsername());
            model.addAttribute("msg","账号或密码错误！");
            return "login";
        }else{
            User u = userService.login(user);
            httpSession.setAttribute("user",u);
            model.addAttribute("username",u.getUsername());
            return "index";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession httpSession){
        httpSession.removeAttribute("user");
        return "login";
    }

//    @RequestMapping("/register")
//    public String register(User user, Model model){
//        model.addAttribute("username",user.getUsername());
//        try{
//            userService.register(user);
//            model.addAttribute("msg", "注册成功！");
//            return "login";
//        }catch (DuplicateKeyException e){
//            model.addAttribute("msg", "账号已被注册！");
//            return "register";
//        }
//    }


}
