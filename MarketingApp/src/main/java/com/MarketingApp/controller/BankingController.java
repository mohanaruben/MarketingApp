package com.MarketingApp.controller;







import java.util.List;







import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.MarketingApp.entity.Employ;
import com.MarketingApp.entity.User;
import com.MarketingApp.entity.Userloan;
import com.MarketingApp.entity.Userloanbilling;
import com.MarketingApp.services.EmployServices;
import com.MarketingApp.services.UserService;
import com.MarketingApp.services.UserloanServices;
import com.MarketingApp.services.UserloanbillingService;
import com.MarketingApp.utility.BankingEmail;






@Controller
public class BankingController {
	@Autowired
	private UserService customerserv;
	@Autowired
	private UserloanbillingService  userloan;
	@Autowired
	private UserloanServices customerloan;
	@Autowired
	private EmployServices empserv;

	

	@Autowired
	private BankingEmail bankingemail;
	
	@RequestMapping("/user")//http://localhost:8080/user
	public String user() {
		
		return "user";
	}
	
	   @RequestMapping("/userdata")//http://localhost:8080/userdata
	  public String userdata(User user,Model model) {
     customerserv.customerdata(user);
     bankingemail.emailsend(user.getEmail(), " Congratulations on Your Registration with FIN FLOW BANK!"," Dear Customer Congratulations on successfully registering with FIN FLOW BANK! 🎉");
     		
     	
     model.addAttribute("users", user);
		
	  return"userloan";
	}
	   
	   
	   @RequestMapping("/loandata")
	   public String loandata(Userloan user,@RequestParam("id")long id) {
		   customerloan .loandetails(user);
		   customerserv.deleteOnelead(id);
		   return"user";
	   }
	   
	   
	   @RequestMapping("/empreg")
		  public String employentitydata (Employ emp) {
		   empserv .employdetails(emp);
			  
			  return"employ";
		  }
	   
	   
	   
	   
	   @RequestMapping("/customer")
	   public String employentitydata (Userloanbilling account) {
		   userloan.userloanbillingdetails(account);
		 
		  return"userloanbilling";
 }
	   
	   
	   
	   
	   
	 
	  
	   
	
	
	
	@RequestMapping("/userall")
	public String customerdata(User customer,Model model) {
		List<User> customers = customerserv.customerlistall(customer);
		model.addAttribute("customers",customers);
		return"user_all";
	}
	
	@RequestMapping("/employall")
 	public String empdata(Employ emp,Model model) {
     	List<Employ > ee  = empserv.empdata(emp);
     	model.addAttribute("ee",ee);
 		return"employ_all";
}
	@RequestMapping("/userloanall")
 	public String loandata(Userloan loan,Model model) {
     	List<Userloan>  loans=customerloan.loandata(loan);
     	model.addAttribute("loans",loans);
 		return"userloan_all";

	
     }
     @RequestMapping("/userloanbillingall")
 	public String transactiondata(Userloanbilling transaction,Model model) {
     	List<Userloanbilling> lu =userloan.transactionalldata(transaction);
     	model.addAttribute("lu",lu);
 		return"userloanbilling_all";
}
}

