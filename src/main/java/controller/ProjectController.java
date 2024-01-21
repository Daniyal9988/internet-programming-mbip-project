package controller;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProjectController {
	@RequestMapping("/home")
	public String landingPage69() {
		return "homepage";
	}
	
	
	@RequestMapping("/")
	public String landingPage() {
		return "customer/homepage/homepage";
	}
	
	@RequestMapping("/recycle")
	public String landingPage2() {
		return "customer/recycle/RecycleActivity";
	}
	
	
	@RequestMapping("/electricity")
	public String landingPage3() {
		return "customer/electricity/ElectricityCons";
	}
	
	@RequestMapping("/water")
	public String landingPage4() {
		return "customer/water/WaterManagment";
	}
	
	@RequestMapping("/generatereport")
	public String landingPage6() {
		return "customer/generatereport/generateReport";
	}
	@RequestMapping("/customer/sucess-promt/sucess")
	public String landingPage7() {
		return "customer/sucess-promt/sucess";
	}
	@RequestMapping("/customer/sucess-promt/unsucess")
	public String landingPage8() {
		return "customer/unsuccess/unsucess";
	}
	@RequestMapping("/sucessfull")
	public String landingPage9() {
		return "sucess";
	}
	
}
