package com.te.springboot_mvcassinement.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "Emp_Info")
public class Employee implements Serializable {

	@Id
	private int empId;
	private String empName;
	private String empPassword;
	private String empRole;

}
