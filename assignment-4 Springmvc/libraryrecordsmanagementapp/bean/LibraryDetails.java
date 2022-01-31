package com.te.libraryrecordsmanagementapp.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name = "library_info")
public class LibraryDetails implements Serializable {

	@Id
	@Column(name = "Library_Id")
	private int id;
	@Column(name = "Book_Name")
	private String name;
	@Column(name = "Book_Author")
	private String author;
	@Column(name = "Book_price")
	private String price;
	@Column(name = "Library_Password")
	private String password;

}
