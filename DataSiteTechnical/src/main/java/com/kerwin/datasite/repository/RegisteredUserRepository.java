package com.kerwin.datasite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kerwin.datasite.entities.RegisteredUser;


@Repository
public interface RegisteredUserRepository extends JpaRepository<RegisteredUser, Integer> {
	

}
