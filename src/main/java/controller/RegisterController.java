package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import service.UserDao;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	private final UserDao userdao;
	
	@Autowired
	RegisterController(UserDao userdao){
		this.userdao = userdao;
	}
	
	@GetMapping("/")
	public String registerPage() {
		return "customer/LoginRegister/register";
	}
	// String fullName, String dob,Integer phone,String address,
	@PostMapping("/createUser")
	public RedirectView getRegistration(Model model,@RequestParam String authority, String fullName, String dob,Integer phone,String address,String email, String password) {
		String id = userdao.createUser(authority, fullName, dob, phone, address, email, password);
		return new RedirectView("http://localhost:8080/Project/sucessfull");
	}
}
