package com.te.springboot_mvcassinement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.te.springboot_mvcassinement.dao.EmployeeDao;
import com.te.springboot_mvcassinement.dto.Employee;
import com.te.springboot_mvcassinement.dto.MyEmployeeDetails;

@Service
public class EmployeeServiceImp implements UserDetailsService {

	@Autowired
	private EmployeeDao dao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		Employee employee = dao.findByEmpName(username);

		if (employee != null) {
			return new MyEmployeeDetails(employee);
		}
		throw new UsernameNotFoundException(username);
	}

	public List<Employee> findAllEmployeeDetails() {
		return (List<Employee>) dao.findAll();
	}

	public Employee getData(int id) {
		return dao.findByEmpId(id);
	}

	public Employee addDetails(Employee employee) {
		return dao.save(employee); // i feel i may be wrong!
	}
	
}
