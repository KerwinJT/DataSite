package com.kerwin.datasite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kerwin.datasite.entities.UnregisteredUser;

@Repository
public interface UnregisteredUserRepository extends JpaRepository<UnregisteredUser, Integer> {

}
