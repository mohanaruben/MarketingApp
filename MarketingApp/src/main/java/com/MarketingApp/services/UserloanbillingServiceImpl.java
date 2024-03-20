package com.MarketingApp.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MarketingApp.entity.Userloanbilling;
import com.MarketingApp.repository.UserloanbillingRepository;


@Service
public class UserloanbillingServiceImpl implements UserloanbillingService {
	
	@Autowired
	private UserloanbillingRepository userloanrepo;

	@Override
	public void userloanbillingdetails(Userloanbilling account) {
		userloanrepo.save(account);
		
	}

	@Override
	public List<Userloanbilling> transactionalldata(Userloanbilling transaction) {
		List<Userloanbilling> lu=userloanrepo.findAll();
		return lu;
	}

}
