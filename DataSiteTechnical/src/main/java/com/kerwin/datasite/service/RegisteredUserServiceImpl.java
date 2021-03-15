package com.kerwin.datasite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kerwin.datasite.entities.Project;
import com.kerwin.datasite.entities.RegisteredUser;
import com.kerwin.datasite.repository.ProjectRepository;
import com.kerwin.datasite.repository.RegisteredUserRepository;


@Service
public class RegisteredUserServiceImpl implements RegisteredUserService {

	@Autowired
	private RegisteredUserRepository regUserRepo;

	@Autowired
	private ProjectRepository projectRepo;

	@Override
	public List<RegisteredUser> findAllRegisteredUsers() {
		List<RegisteredUser> allUsers = regUserRepo.findAll();
		if (!allUsers.isEmpty()) {
			for (RegisteredUser user : allUsers) {
				List<Project> projects = projectRepo.findByUserId(user.getId());
				for (Project project : projects) {
					user.getProjects().add(project.getProjectId());
				}
			}
		}
		return allUsers;
	}

}
