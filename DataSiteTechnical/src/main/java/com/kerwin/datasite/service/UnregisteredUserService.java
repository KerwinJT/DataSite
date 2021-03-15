package com.kerwin.datasite.service;

import java.util.List;

import com.kerwin.datasite.entities.UnregisteredUser;

public interface UnregisteredUserService {

	List<UnregisteredUser> findAllUnregisteredUsers();
	
}
