package com.te.libraryrecordsmanagementapp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.te.libraryrecordsmanagementapp.bean.LibraryDetails;

@Repository
public class LibraryDaoImp implements LibraryDao {

	@Override
	public LibraryDetails authenticate(int id, String password) {

		EntityManagerFactory factory = Persistence.createEntityManagerFactory("library");
		EntityManager manager = factory.createEntityManager();
		LibraryDetails details = manager.find(LibraryDetails.class, id);
		if (details != null) {
			if (details.getPassword().equals(password)) {
				return details;
			} else {
				return null;
			}
		}
		return null;
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
