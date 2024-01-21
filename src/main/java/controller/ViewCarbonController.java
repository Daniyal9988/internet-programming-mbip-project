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
import model.CarbonFootprint;
import service.CarbonFootprintDao;
import service.add_activity;

@Controller
public class ViewCarbonController {

	private final CarbonFootprintDao CarbonFootprintDao;

	@Autowired
	ViewCarbonController(CarbonFootprintDao CarbonFootprintDao) {
		this.CarbonFootprintDao = CarbonFootprintDao;
	}


	@GetMapping("/view-carbon")
	public ModelAndView getall_mav() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    String userEmail = authentication.getName();
		List<CarbonFootprint> activityList = CarbonFootprintDao.getCarbonReport(userEmail);
		ModelAndView mav = new ModelAndView("customer/carbon-footprint/carbon");
		mav.addObject("activityList", activityList);
		return mav;
	}

}

