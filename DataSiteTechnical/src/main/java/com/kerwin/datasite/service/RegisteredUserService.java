package com.kerwin.datasite.service;

import java.util.List;

import com.kerwin.datasite.entities.RegisteredUser;

public interface RegisteredUserService {
	
	List<RegisteredUser> findAllRegisteredUsers();

}
