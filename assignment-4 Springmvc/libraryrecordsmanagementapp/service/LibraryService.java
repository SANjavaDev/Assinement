package com.te.libraryrecordsmanagementapp.service;

import com.te.libraryrecordsmanagementapp.bean.LibraryDetails;

public interface LibraryService {

	public LibraryDetails authenticate(int id, String password);

	public boolean addData(LibraryDetails details);

	public LibraryDetails getData(int id);

	public boolean updateData(LibraryDetails details, int id);

	public boolean deleteData(int id);
}
