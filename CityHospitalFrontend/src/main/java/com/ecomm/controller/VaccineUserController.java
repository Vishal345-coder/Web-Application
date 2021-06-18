package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecomm.dao.VaccineUserDAO;
import com.ecomm.entity.CoronaPatient;
import com.ecomm.entity.VaccineUser;

@Controller
public class VaccineUserController 
{
	@Autowired 
	VaccineUserDAO vaccineUserDAO;
	
	@RequestMapping("/RegisterVaccineUser")
	public String showVaccineRegisterPage(@ModelAttribute("vaccine")VaccineUser vaccineUser,Model m)
	{
		m.addAttribute("vaccine", vaccineUser);
		
		System.out.println("Vaccine Register Page Created");
		
		return "RegisterVaccineUser";
	}
	
	@RequestMapping(value="/VaccineUser",method=RequestMethod.POST)
	public String showVaccineUserPage(@ModelAttribute("vaccine")VaccineUser vaccineUser,Model m)
	{
		m.addAttribute("vaccine", vaccineUser);
		
		vaccineUserDAO.registerVaccineUser(vaccineUser);
		
		System.out.println("Vaccine Registration Page Created");
		
		return "ConfirmVaccineRegistration";
	}
}
