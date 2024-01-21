package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import model.User; // Import the correct User class from your application's model package
import service.UserDao;

@Controller
public class ProfileController {
    
    private final UserDao userdao;
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    
    @Autowired
    ProfileController(UserDao userdao){
        this.userdao = userdao;
    }
    @RequestMapping("/view/user")
    public ModelAndView getall_mav() {
        List<User> userList = userdao.viewUser();
        ModelAndView mav = new ModelAndView("profile");
        mav.addObject("userList", userList);
        return mav;
    }
    
    @PostMapping("/view/updateUser")
	public RedirectView getRegistration(Model model,@RequestParam String fullName, String dob,Integer phone,String address,String email) {
		String id = userdao.updateUser(fullName, dob,phone, address, email);
		return new RedirectView("http://localhost:8080/Project/");
	}
    
    @RequestMapping("/admin/user")
    public ModelAndView getall_mav1() {
        List<User> userList = userdao.viewUser();
        ModelAndView mav = new ModelAndView("admin/profile");
        mav.addObject("userList", userList);
        return mav;
    }
    
    @PostMapping("/admin/updateUser")
	public RedirectView getRegistration1(Model model,@RequestParam String fullName, String dob,Integer phone,String address,String email) {
		String id = userdao.updateUser(fullName, dob,phone, address, email);
		return new RedirectView("http://localhost:8080/Project/admin/");
	}
    
    
    // Other methods...
}




//String fullName, String dob,Integer phone,String address,
//	@PostMapping("/createUser")
//	public RedirectView getRegistration(Model model,@RequestParam String authority, String fullName, String dob,Integer phone,String address,String email, String password) {
//		String id = userdao.createUser(authority, fullName, dob, phone, address, email, password);
//		return new RedirectView("http://localhost:8080/Project/");
//	}
