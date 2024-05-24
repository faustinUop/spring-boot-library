package com.capstone.springbootlibrary.dao;

import com.capstone.springbootlibrary.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
