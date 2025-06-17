package com.example.Fast_BusBooking;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.Fast_BusBooking.entity.User;
import com.example.Fast_BusBooking.repo.UserRepository;

import jakarta.persistence.EntityNotFoundException;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository repo;
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/registerpage")
	public String registerpage() {
		return "registerpage.jsp";
	}
	
	@RequestMapping("saveuser")
	public String saveuser(User saveuser,Model model,RedirectAttributes redirectattributes) {
		repo.save(saveuser);
		redirectattributes.addFlashAttribute("saveuser",saveuser);
		return "redirect:loginpage";	
	}
	
	@RequestMapping("/loginpage")
	public String loginpage(@ModelAttribute("saveuser") User saveuser,@ModelAttribute("msg")String msg ,Model model) {
	    model.addAttribute("saveuser",saveuser);
	    model.addAttribute("msg",msg);
		return "loginpage.jsp"; 
	}
	
	@RequestMapping("/logincheck")
	public String loginCheck(@RequestParam String email, 
	                         @RequestParam String password, 
	                         RedirectAttributes redirectAttributes,
	                         Model model) {

	    User user = repo.findByEmail(email);

	    if (user != null && user.getPassword().equals(password)) {
	        // Login successful
	        model.addAttribute("user", user);
	        return "home.jsp"; 
	    } else {
	        // Login failed
	        redirectAttributes.addFlashAttribute("msg", "Invalid email or password");
	        return "redirect:loginpage";
	    }
	}

	
	
	

			
		
		
	}

	
	
	
