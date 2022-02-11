package com.te.springboot_mvcassinement.dao;

import org.springframework.data.repository.CrudRepository;

import com.te.springboot_mvcassinement.dto.Employee;

public interface EmployeeDao extends CrudRepository<Employee, Integer> {

	public Employee findByEmpName(String name);

	public Employee findByEmpId(int id);
}
