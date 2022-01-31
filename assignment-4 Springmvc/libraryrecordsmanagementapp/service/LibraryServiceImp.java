package com.te.libraryrecordsmanagementapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.te.libraryrecordsmanagementapp.bean.LibraryDetails;
import com.te.libraryrecordsmanagementapp.dao.LibraryDao;

@Service
public class LibraryServiceImp implements LibraryService {

	@Autowired
	private LibraryDao dao;

	@Override
	public LibraryDetails authenticate(int id, String password) {
		if (id <= 0) {
			return null;
		}
		return dao.authenticate(id, password);
	}

	@Override
	public boolean addData(LibraryDetails details) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public LibraryDetails getData(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateData(LibraryDetails details, int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteData(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
