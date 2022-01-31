package com.te.libraryrecordsmanagementapp.dao;

import com.te.libraryrecordsmanagementapp.bean.LibraryDetails;

public interface LibraryDao {
	public LibraryDetails authenticate(int id, String password);

	public boolean addData(LibraryDetails details);

	public LibraryDetails getData(int id);

	public boolean updateData(LibraryDetails details, int id);

	public boolean deleteData(int id);

}
