package com.MarketingApp.services;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MarketingApp.entity.User;
import com.MarketingApp.repository.UserRepository;














@Service
public class UserServiceImpl implements UserService{
	

	
	@Autowired
	private UserRepository userRepository;
   

	
	@Override
	public void customerdata(User user) {
		userRepository .save(user);
	}

	@Override
	public void deleteOnelead(long id) {
		userRepository.deleteById(id);
	}

	
	public List<User> customerlistall(User customer) {
		List<User> ce = userRepository.findAll();
		return ce;
		
	}

}