package com.example.sample1.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ManagerController {
	
	@RequestMapping("/manager.do") 
    public String mypage(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/managerpage/managermain"; 
    }
		
	@RequestMapping("/manager/checkedit.do") 
    public String checkedit(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/managerpage/customercheckedit"; 
    }
	
	
}
