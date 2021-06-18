package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.OtherPatientDAO;
import com.ecomm.entity.CoronaPatient;
import com.ecomm.entity.OtherPatient;

@Controller
public class OtherPatientController 
{
	@Autowired
	OtherPatientDAO otherPatientDAO;
	
	@RequestMapping("/OtherPatient")
	public String showOtherPatientPage(Model m)
	{
		System.out.println("Other Patient Page Created");
		
		List<OtherPatient> ohterPatientList = otherPatientDAO.getOtherPatients();
		m.addAttribute("otherPatientList", ohterPatientList);
		
		return "OtherPatient";
	}
	
	@RequestMapping(value="/insertOtherPatient", method=RequestMethod.POST)
	public  String insertOtherPatient(@RequestParam("patientId")String patientId,@RequestParam("patientName")String patientName,@RequestParam("patientAge")int patientAge,@RequestParam("patientAdmitDate")String patientAdmitDate,@RequestParam("relativeMobNo")String relativeMobNo,@RequestParam("patientAddress")String patientAddress,Model m)
	{
		System.out.println("Patient ID : "+patientId);
		System.out.println("Patient Name : "+patientName);
		System.out.println("Patient Age : "+patientAge);
		System.out.println("Patient Admit Date  : "+patientAdmitDate);
		System.out.println("Relative Mobile Number : "+relativeMobNo);
		System.out.println("Patient Address : "+patientAddress);
		
		OtherPatient otherPatient = new OtherPatient();
		
		otherPatient.setPatientId(patientId);
		otherPatient.setPatientName(patientName);
		otherPatient.setPatientAge(patientAge);
		otherPatient.setPatientAdmitDate(patientAdmitDate);
		otherPatient.setRelativeMobNo(relativeMobNo);
		otherPatient.setPatientAddress(patientAddress);
		
		otherPatientDAO.addOtherPatient(otherPatient);
		
		System.out.println("OtherPatient Object Added");
		
		List<OtherPatient> otherPatientList = otherPatientDAO.getOtherPatients();
		m.addAttribute("otherPatientList",otherPatientList);
		
		return "OtherPatient";
	}
	
	@RequestMapping("/deleteOtherPatient/{patientId}")
	public String deleteOtherPatient(@PathVariable("patientId")String patientId,Model m)
	{
		OtherPatient otherPatient = otherPatientDAO.getOtherPatient(patientId);
		otherPatientDAO.deleteOtherPatient(otherPatient);
		List<OtherPatient> otherPatientList = otherPatientDAO.getOtherPatients();
		m.addAttribute("otherPatientList",otherPatientList);
		
		return "OtherPatient";
	}
	
	@RequestMapping("/editOtherPatient/{patientId}")
	public String editOtherPatient(@PathVariable("patientId")String patientId,Model m)
	{
		OtherPatient otherPatient = otherPatientDAO.getOtherPatient(patientId);
		m.addAttribute("otherPatient", otherPatient);
		
		return "UpdateOtherPatient";
	}
	
	@RequestMapping(value="/UpdateOtherPatient",method=RequestMethod.POST)
	public String updateOtherPatient(@RequestParam("patientId")String patientId,@RequestParam("patientName")String patientName,@RequestParam("patientAge")int patientAge,@RequestParam("patientAdmitDate")String patientAdmitDate,@RequestParam("relativeMobNo")String relativeMobNo,@RequestParam("patientAddress")String patientAddress,Model m)
	{
		System.out.println("Patient Id : "+patientId);
		System.out.println("Patient Name  :  "+patientName);
		System.out.println("Patient Age :  "+patientAge);
		System.out.println("Patient Admiteed Date  : "+patientAdmitDate);
		System.out.println("Relative Mob No : "+relativeMobNo);
		System.out.println("Patient Address : "+patientAddress);
		
		OtherPatient otherPatient = otherPatientDAO.getOtherPatient(patientId);
		otherPatient.setPatientId(patientId);
		otherPatient.setPatientName(patientName);
		otherPatient.setPatientAge(patientAge);
		otherPatient.setPatientAdmitDate(patientAdmitDate);
		otherPatient.setRelativeMobNo(relativeMobNo);
		otherPatient.setPatientAddress(patientAddress);
		
		otherPatientDAO.updateOtherPatient(otherPatient);
		
		List<OtherPatient> otherPatientList = otherPatientDAO.getOtherPatients();
		m.addAttribute("otherPatientList", otherPatientList);
		
		return "OtherPatient";
	}
}

