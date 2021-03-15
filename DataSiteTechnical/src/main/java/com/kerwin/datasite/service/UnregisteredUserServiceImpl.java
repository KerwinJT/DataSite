package com.kerwin.datasite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kerwin.datasite.entities.Project;
import com.kerwin.datasite.entities.UnregisteredUser;
import com.kerwin.datasite.repository.ProjectRepository;
import com.kerwin.datasite.repository.UnregisteredUserRepository;

@Service
public class UnregisteredUserServiceImpl implements UnregisteredUserService{

	
	@Autowired
	private UnregisteredUserRepository unregUserRepo;
	
	@Autowired
	private ProjectRepository projectRepo;
	
	@Override
	public List<UnregisteredUser> findAllUnregisteredUsers() {
		List<UnregisteredUser> allUnregUsers = unregUserRepo.findAll();
		if(!allUnregUsers.isEmpty()) {
			for(UnregisteredUser unUser: allUnregUsers) {
				List<Project> projects = projectRepo.findByUserId(unUser.getId());
				for(Project project: projects) {
					unUser.getProjects().add(project.getProjectId());
				}
			}
		}
		return allUnregUsers;
	}

}
