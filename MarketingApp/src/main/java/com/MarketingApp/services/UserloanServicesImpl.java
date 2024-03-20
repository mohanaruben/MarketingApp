package com.MarketingApp.services;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MarketingApp.entity.Userloan;
import com.MarketingApp.repository.UserloanRepository;







@Service
public class UserloanServicesImpl implements UserloanServices {

	@Autowired
	private UserloanRepository loanrepo ;
	@Override
	public void loandetails(Userloan loan) {
		loanrepo.save(loan);
		
	}

	@Override
	public List<Userloan> loandata(Userloan loan) {
		List<Userloan> cl=loanrepo.findAll();
		return cl;
	
		
	}



}
