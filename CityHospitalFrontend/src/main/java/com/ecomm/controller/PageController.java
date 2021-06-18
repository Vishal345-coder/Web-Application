package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecomm.entity.UserDetail;

@Controller
public class PageController 
{
	@RequestMapping("/Home")
	public String showHomePage()
	{
		System.out.println("Home Page Created");
		return "Home";
	}
	
	@RequestMapping("/AboutUs")
	public String showAboutUsPage()
	{
		System.out.println("About Us Page Created");
		
		return "AboutUs";
	}
	
	@RequestMapping("/Facilities")
	public String showFacilitiesPage()
	{
		System.out.println("Facilities Page Created");
		
		return "Facilities";
	}
	
	@RequestMapping("/ContactUs")
	public String contactUs()
	{
		System.out.println("Contac us page created");
		
		return "ContactUs";
	}
	
	@RequestMapping("/Login")
	public String showLogInPage()
	{
		System.out.println("LogIn page creation");
		return "Login";
	}
	
	@RequestMapping("/Register")
	public String showRegisterPage(Model m)
	{
		UserDetail userDetail = new UserDetail();
		m.addAttribute("user", userDetail);
		System.out.println("Register page creation");
		
		return "Register";
	}
}
