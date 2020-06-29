package demo.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/myLoginPage")
	public String myLoginPage() {
//		return "myLoginPage";
		return "bootstrapLogin";
	}
	
	// add request mapping for /access-denied
	@GetMapping("/access-denied")
	public String accessDenied() {
		return "access-denied";
	}
}
