package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CoronaPatientDAO;
import com.ecomm.entity.CoronaPatient;

@Controller
public class CoronaPatientController 
{
	@Autowired
	CoronaPatientDAO coronaPatientDAO;
	
	@RequestMapping("/CoronaPatient")
	public String showCoronaPatientPage(Model m)
	{
		System.out.println("CoronaPatient Page Created");
		
		List<CoronaPatient> coronaPatientList = coronaPatientDAO.getCoronaPatients();
		m.addAttribute("coronaPatientList",coronaPatientList);
		
		return "CoronaPatient";
	}
	
	@RequestMapping(value="/insertCoronaPatient", method=RequestMethod.POST)
	public  String insertCoronaPatient(@RequestParam("patientId")String patientId,@RequestParam("patientName")String patientName,@RequestParam("patientAge")int patientAge,@RequestParam("patientAdmitDate")String patientAdmitDate,@RequestParam("relativeMobNo")String relativeMobNo,@RequestParam("patientAddress")String patientAddress,Model m)
	{
		System.out.println("Patient ID : "+patientId);
		System.out.println("Patient Name : "+patientName);
		System.out.println("Patient Age : "+patientAge);
		System.out.println("Patient Admit Date  : "+patientAdmitDate);
		System.out.println("Relative Mobile Number : "+relativeMobNo);
		System.out.println("Patient Address : "+patientAddress);
		
		CoronaPatient coronaPatient = new CoronaPatient();
		
		coronaPatient.setPatientId(patientId);
		coronaPatient.setPatientName(patientName);
		coronaPatient.setPatientAge(patientAge);
		coronaPatient.setPatientAdmitDate(patientAdmitDate);
		coronaPatient.setRelativeMobNo(relativeMobNo);
		coronaPatient.setPatientAddress(patientAddress);
		
		coronaPatientDAO.addCoronaPatient(coronaPatient);
		
		System.out.println("CoronaPatient Object Added");
		
		List<CoronaPatient> coronaPatientList = coronaPatientDAO.getCoronaPatients();
		m.addAttribute("coronaPatientList",coronaPatientList);
		
		return "CoronaPatient";
		
	}
	@RequestMapping("/deleteCoronaPatient/{patientId}")
	public String deleteCoronaPatient(@PathVariable("patientId")String patientId,Model m)
	{
		CoronaPatient coronaPatient = coronaPatientDAO.getCoronaPatient(patientId);
		coronaPatientDAO.deleteCoronaPatient(coronaPatient);
		List<CoronaPatient> coronaPatientList = coronaPatientDAO.getCoronaPatients();
		m.addAttribute("coronaPatientList",coronaPatientList);
		
		return "CoronaPatient";
	}
	
	@RequestMapping("/editCoronaPatient/{patientId}")
	public String editCoronaPatient(@PathVariable("patientId")String patientId,Model m)
	{
		CoronaPatient coronaPatient = coronaPatientDAO.getCoronaPatient(patientId);
		m.addAttribute("coronaPatient", coronaPatient);
		
		return "UpdateCoronaPatient";
	}
	
	@RequestMapping(value="/UpdateCoronaPatient",method=RequestMethod.POST)
	public String updateCoronaPatient(@RequestParam("patientId")String patientId,@RequestParam("patientName")String patientName,@RequestParam("patientAge")int patientAge,@RequestParam("patientAdmitDate")String patientAdmitDate,@RequestParam("relativeMobNo")String relativeMobNo,@RequestParam("patientAddress")String patientAddress,Model m)
	{
		System.out.println("Patient Id : "+patientId);
		System.out.println("Patient Name  :  "+patientName);
		System.out.println("Patient Age :  "+patientAge);
		System.out.println("Patient Admiteed Date  : "+patientAdmitDate);
		System.out.println("Relative Mob No : "+relativeMobNo);
		System.out.println("Patient Address : "+patientAddress);
		
		CoronaPatient coronaPatient = coronaPatientDAO.getCoronaPatient(patientId);
		coronaPatient.setPatientId(patientId);
		coronaPatient.setPatientName(patientName);
		coronaPatient.setPatientAge(patientAge);
		coronaPatient.setPatientAdmitDate(patientAdmitDate);
		coronaPatient.setRelativeMobNo(relativeMobNo);
		coronaPatient.setPatientAddress(patientAddress);
		
		coronaPatientDAO.updateCoronaPatient(coronaPatient);
		
		List<CoronaPatient> coronaPatientList = coronaPatientDAO.getCoronaPatients();
		m.addAttribute("coronaPatientList", coronaPatientList);
		
		return "CoronaPatient";
	}
}
