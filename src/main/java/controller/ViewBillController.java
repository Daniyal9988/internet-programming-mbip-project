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

import model.ElectricityBIll;
import model.RecycleBill;
import model.WaterBill;
import service.CarbonFootprintDao;

@Controller
public class ViewBillController {

	private final CarbonFootprintDao cfd;

	@Autowired
	ViewBillController(CarbonFootprintDao cfd) {
		this.cfd = cfd;
	}


	@GetMapping("/view-customer-bill")
	public ModelAndView getall_mav() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    String userEmail = authentication.getName();
		List<ElectricityBIll> eBill = cfd.getElectricityBill(userEmail);
		List<RecycleBill> rBill = cfd.getRecycleBill(userEmail);
		List<WaterBill> wBill = cfd.getWaterBill(userEmail);
		ModelAndView mav = new ModelAndView("customer/view-bills/view-bill");
		mav.addObject("eBill", eBill);
		mav.addObject("rBill", rBill);
		mav.addObject("wBill", wBill);
		return mav;
	}

}




