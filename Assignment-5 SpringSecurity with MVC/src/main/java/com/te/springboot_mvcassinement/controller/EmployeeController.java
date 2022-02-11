package com.te.springboot_mvcassinement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.te.springboot_mvcassinement.dto.Employee;
import com.te.springboot_mvcassinement.service.EmployeeServiceImp;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeServiceImp service;

	@GetMapping("/home")
	public String home() {
		return "home";
	}

	@GetMapping("/user")
	public String user() {
		return "/user";
	}

	@GetMapping("/admin")
	public String admin() {
		return "admin";
	}

	@GetMapping("/seeAll")
	public String seeAllEmployeeDetails(ModelMap map) {
		List<Employee> employees = service.findAllEmployeeDetails();
		map.addAttribute("users", employees);
		return "seeAll";
	}

	@GetMapping("/seeById")
	public String getData() {
		return "getData";
	}

	@PostMapping("/seeById")
	public String getData(int id, ModelMap map) {
		Employee employee = service.getData(id);
		map.addAttribute("user", employee);
		return "getData";
	}

	@GetMapping("/addUser")
	public String addUser() {
		return "addDetails";
	}
	public String addUser(ModelMap map, Employee employee) {
		Employee employee2 = service.addDetails(employee);
		if(employee2 != null) {
			map.addAttribute("msg", "Employee add Successfully!");
		}else {
			map.addAttribute("err", "Something went Wromg!");
		}
		return "addDetails";
		
	}
	@GetMapping("/deleteData")
	public String deleteData() {
		return "deleteform";
		
	}
}
