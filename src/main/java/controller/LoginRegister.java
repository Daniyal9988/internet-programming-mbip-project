package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginRegister {

	@GetMapping("/login")
	public String login() {
		return "customer/LoginRegister/login";
	}
		
}
