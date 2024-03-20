package com.MarketingApp.restcontroller;

import java.util.List;







import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.MarketingApp.entity.Employ;
import com.MarketingApp.entity.User;
import com.MarketingApp.entity.Userloan;
import com.MarketingApp.entity.Userloanbilling;
import com.MarketingApp.repository.EmployRepository;
import com.MarketingApp.repository.UserRepository;
import com.MarketingApp.repository.UserloanRepository;
import com.MarketingApp.repository.UserloanbillingRepository;











@RestController
@RequestMapping("/api/")
public class BankingRestController {
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserloanRepository accountrepo;
	
	@Autowired
	private UserloanbillingRepository transactionrepo;
	
	
	@Autowired
	private EmployRepository  employrepo;
	
	
	
	
	
	
	// http://localhost:8080/api/listapi
	@GetMapping("/userlistapi")
	public List<User> getallapi(){
		List<User> user = userRepository.findAll();
		return user;
	}
	// http://localhost:8080/api/deleteapi/7
	@DeleteMapping("/customerdeleteapi/{id}")
	public void deleteApi(@PathVariable("id") long id) {
		userRepository.deleteById(id);
	}
	 
	@PutMapping("/userupdateapi")
	public void updateApi(@RequestBody User user) {
		
		userRepository.save(user);
		
	}
	@PostMapping("/usersaveapi")
	public void saveApi(@RequestBody User user) {
		
		userRepository.save(user);
		
	}
	
	// http://localhost:8080/api/contactlistapi
		@GetMapping("/loanrequestlistapi")
		public List<Userloan> accountallapi(){
			List<Userloan> accounts = accountrepo.findAll();
			return accounts;
		}
		// http://localhost:8080/api/deleteapi/7
		@DeleteMapping("/loanrequestdeleteapi/{id}")
		public void loanrequestdeleteApi(@PathVariable("id") long id) {
			accountrepo.deleteById(id);
		}
		 
		@PutMapping("/loanrequestupdateapi")
		public void loanrequestupdateApi(@RequestBody Userloan account) {
			
			accountrepo.save(account);
			
		}
		@PostMapping("/loanrequestsaveapi")
		public void loanrequestsaveApi(@RequestBody Userloan account) {
			
			accountrepo.save(account);
			
		}
		
		
		// http://localhost:8080/api/billinglistapi
				@GetMapping("/loanlistapi")
				public List<Userloanbilling> loanallapi(){
					List<Userloanbilling> transactions = transactionrepo.findAll();
					return transactions;
				}
				// http://localhost:8080/api/deleteapi/7
				@DeleteMapping("/loandeleteapi/{id}")
				public void loandeleteApi(@PathVariable("id") long id) {
					transactionrepo.deleteById(id);
				}
				 
				@PutMapping("/loanupdateapi")
				public void loanupdateApi(@RequestBody Userloanbilling transation) {
					
					transactionrepo.save( transation);
					
				}
				@PostMapping("/loansaveapi")
				public void loansaveApi(@RequestBody Userloanbilling transaction) {
					
					
					transactionrepo.save(transaction);
					
				}
				
				
				// http://localhost:8080/api/billinglistapi
				@GetMapping("/employlistapi")
				public List<Employ> employallapi(){
					List<Employ> transactions = employrepo.findAll();
					return transactions;
				}
				// http://localhost:8080/api/deleteapi/7
				@DeleteMapping("/employdeleteapi/{id}")
				public void employdeleteApi(@PathVariable("id") long id) {
					employrepo.deleteById(id);
				}
				 
				@PutMapping("/employupdateapi")
				public void transactionupdateApi(@RequestBody Employ transation) {
					
					employrepo.save( transation);
					
				}
				@PostMapping("/employsaveapi")
				public void transationsaveApi(@RequestBody Employ transaction) {
					
					
					employrepo.save(transaction);
					
				}
				
	

}


