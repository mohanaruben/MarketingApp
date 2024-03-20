package com.MarketingApp.services;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MarketingApp.entity.Employ;
import com.MarketingApp.repository.EmployRepository;







@Service
public class EmployServicesImpl implements EmployServices {
	@Autowired
	private EmployRepository emprepo;
	
	
	@Override
	public void employdetails(Employ emp) {
		emprepo.save(emp);
		
	}

	@Override
	public List<Employ> empdata(Employ emp) {
		List<Employ> ee=emprepo.findAll();
		return ee;
	}



}
