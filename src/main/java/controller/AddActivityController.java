package controller;

import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import model.Activity;
import service.add_activity;

@Controller
public class AddActivityController {

	private final add_activity add_activity;

	@Autowired
	AddActivityController(add_activity add_activity) {
		this.add_activity = add_activity;
	}


	@GetMapping("/view-activities")
	public ModelAndView getall_mav() {
		List<Activity> activityList = add_activity.getAllActivities();
		ModelAndView mav = new ModelAndView("customer/activities/listofactivities");
		mav.addObject("activityList", activityList);
		return mav;
	}

}
