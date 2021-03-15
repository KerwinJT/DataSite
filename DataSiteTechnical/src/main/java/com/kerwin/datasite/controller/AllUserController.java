package com.kerwin.datasite.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kerwin.datasite.entities.RegisteredUser;
import com.kerwin.datasite.entities.UnregisteredUser;
import com.kerwin.datasite.entities.User;
import com.kerwin.datasite.service.RegisteredUserService;
import com.kerwin.datasite.service.UnregisteredUserService;

@RestController
@RequestMapping(value = "/allusers/", produces = MediaType.APPLICATION_JSON_VALUE)
public class AllUserController {

	@Autowired
	private RegisteredUserService regUserService;

	@Autowired
	private UnregisteredUserService unregUserService;

	@GetMapping("getAllAsObject")
	public List<Object> getAllObjectUsers(HttpServletResponse response) {

		List<Object> allUsers = new ArrayList<>();
		try {
			List<RegisteredUser> allRegUsers = regUserService.findAllRegisteredUsers();
			List<UnregisteredUser> allUnregUsers = unregUserService.findAllUnregisteredUsers();
			if (!allRegUsers.isEmpty()) {
				allUsers.addAll(allRegUsers);
			}
			if (!allUnregUsers.isEmpty()) {
				allUsers.addAll(allUnregUsers);
			}
			response.setStatus(200);
			return allUsers;

		} catch (Exception e) {
			response.setStatus(504);
			return null;
		}

	}
	
	@GetMapping("getAllAsUser")
	public List<User> getAllUsers(HttpServletResponse response) {

		List<User> allUsers = new ArrayList<>();
		try {
			List<RegisteredUser> allRegUsers = regUserService.findAllRegisteredUsers();
			List<UnregisteredUser> allUnregUsers = unregUserService.findAllUnregisteredUsers();
			if (!allRegUsers.isEmpty()) {
				allUsers.addAll(allRegUsers);
			}
			if (!allUnregUsers.isEmpty()) {
				allUsers.addAll(allUnregUsers);
			}
			response.setStatus(200);
			return allUsers;

		} catch (Exception e) {
			response.setStatus(504);
			return null;
		}

	}

}
