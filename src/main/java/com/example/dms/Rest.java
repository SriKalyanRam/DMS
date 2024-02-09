package com.example.dms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dms.model.SurveyResponse;
import com.example.dms.model.User;
import com.example.dms.repository.SurveyResponseRepository;
import com.example.dms.repository.UserRepository;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Rest {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	SurveyResponseRepository surveyResponseRepository;
	
	
	
		@RequestMapping("/")
		public String start()
		{
			return "start";
		}
	@RequestMapping("/home")
	public String home()
	{
		return "home";
	}
	@RequestMapping("/admins")
	public String admins()
	{
		return "admins";
	}
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	@RequestMapping("/aboutus")
	public String aboutus()
	{
		return "aboutus";
	}
	
	@RequestMapping("/profile")
	public String profile() {
	   

	    return "profile";
	}
	@RequestMapping("/NewSurvey")
	public String NewSurvey()
	{
		return "NewSurvey";
	}
	@RequestMapping("/survey")
	public String survey()
	{
		return "survey";
	}
	@RequestMapping("/contactus")
	public String contactus()
	{
		return "contactus";
	}
	@RequestMapping("/registration")
	public String registration()
	{
		return "registration";
	}
	@RequestMapping("/Search")
	public String Search()
	{
		return "Search";
	}
	
	@RequestMapping("/surveylist")
	public String surveylist()
	{
		return "surveylist";
	}
	
	@RequestMapping("/form1")
	public String form1()
	{
		return "form1";
	}
	@RequestMapping("/Team")
	public String Team()
	{
		return "Team";
	}
	@RequestMapping("/admin")
	public String admin()
	{
		return "admin";
	}
	@PostMapping("insertuser")
	public String insertUser(HttpServletRequest request)
	{
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String password = request.getParameter("password");
		
		User u =new User();
		u.setFname(fname);
		u.setLname(lname);
		u.setEmail(email);
		u.setMobile(mobile);
		u.setPassword(password);
		
		userRepository.save(u);
		return "login";
	}
	@PostMapping("loginuser")
	public String loginUser(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User u = userRepository.login(email, password);
		if(u!=null)
			return "home";
		return "login";
		
	}
	@GetMapping("/surveys")
	public ResponseEntity<List<SurveyResponse>> getAllSurveys() {
	    List<SurveyResponse> surveys = surveyResponseRepository.findAll(); // Use a custom query if needed
	    return ResponseEntity.ok(surveys);
	}
	
   
}
