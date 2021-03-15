package com.kerwin.datasite.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kerwin.datasite.entities.Project;


@Repository
public interface ProjectRepository extends JpaRepository<Project, Integer> {
	
	List<Project> findByUserId(Integer userId);
	
}
