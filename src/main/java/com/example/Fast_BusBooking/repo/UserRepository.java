package com.example.Fast_BusBooking.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.Fast_BusBooking.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	User findByEmail(String email);
	

}
