package com.te.libraryrecordsmanagementapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.te.libraryrecordsmanagementapp.bean.LibraryDetails;
import com.te.libraryrecordsmanagementapp.service.LibraryService;

@Controller
public class LibraryController {

	@Autowired
	private LibraryService service;

	@GetMapping("/login")
	public String login() {

		return "loginForm";

	}

	@PostMapping("/login")
	public String authenticate(int id, String password, ModelMap map, HttpServletRequest request) {
		LibraryDetails details = service.authenticate(id, password);
		HttpSession session = request.getSession();
		session.setAttribute("loggedIn", details);
		if (details != null) {
			map.addAttribute("data", details.getName());
			return "welcome";
		} else {
			map.addAttribute("errMsg", "Invalid Credentials");
			return "loginForm";
		}
	}

	@GetMapping("/add")
	public String addForm(@SessionAttribute(name = "loggedIn", required = false) LibraryDetails details, ModelMap map) {
		if (details != null) {
			return "addBookForm";
		} else {
			map.addAttribute("errMsg", "Please login first");
			return "loginForm";
		}
	}

	@PostMapping("/add")
	public String addData(LibraryDetails details, ModelMap map,
			@SessionAttribute(name = "loggedIn", required = false) LibraryDetails details2) {
		if (details2 != null) {
			if (service.addData(details)) {
				map.addAttribute("msg", "Data inserted succesfully");
			} else {
				map.addAttribute("errMsg", "something went wrong!");
			}
			return "addBookForm";
		} else {
			map.addAttribute("errMsg", "Please login first");
			return "loginForm";
		}
	}

	@GetMapping("/delete")
	public String deleteForm(@SessionAttribute(name = "loggedIn", required = false) LibraryDetails details,
			ModelMap map) {
		if (details != null) {
			return "deleteBookForm";

		} else {
			map.addAttribute("errMsg", "Please login first");
			return "loginForm";
		}
	}

	@PostMapping("/delete")
	public String deleteData(ModelMap map, int id,
			@SessionAttribute(name = "loggedIn", required = false) LibraryDetails details) {
		if (details != null) {
			if (service.deleteData(id)) {
				map.addAttribute("msg", "Data deleted Successfully!");

			} else {
				map.addAttribute("msg", "Data not found for Id: " + id);
			}
			return "deleteBookForm";
		} else {
			map.addAttribute("errMsg", "Please login First");
			return "loginForm";
		}
	}

	@GetMapping("/getData")
	public String getForm(@SessionAttribute(name = "loggeIn", required = false) LibraryDetails details, ModelMap map) {
		if (details != null) {
			return "getBookForm";
		} else {
			map.addAttribute("errMsg", "Please login first");
			return "loginForm";
		}
	}

	@PostMapping("/getData")
	public String getData(int id, ModelMap map,
			@SessionAttribute(name = "loggedIn", required = false) LibraryDetails details) {

		if (details != null) {
			LibraryDetails details2 = service.getData(id);
			if (details2 != null) {
				map.addAttribute("data", details2);
			} else {
				map.addAttribute("msg", "Data not found for id:" + id);
			}
			return "getBookData";
		} else {
			map.addAttribute("errMsg", "Please login first");
			return "loginForm";
		}
	}

	@GetMapping("/update")
	public String updateForm(@SessionAttribute(name = "loggedIn", required = false) LibraryDetails details,
			ModelMap map) {
		if (details != null) {
			map.addAttribute("data", details.getId());
			return "updateBookForm";
		} else {
			map.addAttribute("errMsg", "Please login first");
			return "loginForm";
		}
	}

	@PostMapping("/update")
	public String updateData(@SessionAttribute(name = "loggedIn", required = false) LibraryDetails details,
			LibraryDetails details2, ModelMap map) {
		if (details != null) {
			if (service.updateData(details2, details.getId())) {
				map.addAttribute("msg", "Data update successfully");
			} else {
				map.addAttribute("msg", "Something went wrong");
			}
			return "updateBookForm";
		} else {
			map.addAttribute("errMsg", "Please login first");
			return "loginform";
		}
	}

	@GetMapping("/logout")
	public String logout(ModelMap map, HttpSession session) {
		map.addAttribute("errMsg", "logged out Successfully");
		session.invalidate();
		return "loginForm";
	}
}