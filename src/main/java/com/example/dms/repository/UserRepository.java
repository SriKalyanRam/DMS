package com.example.dms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.dms.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>
{
	
	@Query("select u from User u where email=?1 and password=?2")
	public User login(String email,String password);
}
