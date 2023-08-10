package com.example.sample1.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.sample1.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/login.do") 
    public String login(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/user/plogin";
    }
	
	@RequestMapping("/header.do") 
    public String header(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/header";
    }
	
	@RequestMapping("/header2.do") 
    public String header2(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/header2";
    }
	
	@RequestMapping("/footer.do") 
    public String footer(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/footer";
    }
	
	
}
