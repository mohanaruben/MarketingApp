package com.MarketingApp.utility;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
@Component
public class BankingEmailimpl implements BankingEmail {
	@Autowired
	  JavaMailSender sender;


		@Override
		public void emailsend(String to, String sub, String text) {
			
			SimpleMailMessage s=new SimpleMailMessage();
			
			s.setTo(to);
		    s.setSubject(sub);
		    s.setText(text);
		    
		    sender.send(s);
		}	

}
