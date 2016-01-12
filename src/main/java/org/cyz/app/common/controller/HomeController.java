package org.cyz.app.common.controller;

import java.text.DateFormat; 
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import org.cyz.app.common.model.Signup;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		//ModelAndView modelandview = new ModelAndView();
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		//modelandview.setViewName("production/home/home");
//		return "home";
//	}
	@RequestMapping(value={"/","index"},method = RequestMethod.GET)
	public ModelAndView getIndex() {
		ModelAndView modelandview = new ModelAndView();
		modelandview.setViewName("index");
		return modelandview;
	}
	@RequestMapping(value="/signup",method = RequestMethod.GET)
	public ModelAndView getSignin() {
		ModelAndView modelandview = new ModelAndView();
		modelandview.getModelMap().addAttribute("inputfocus","username");
		modelandview.setViewName("signup");
		
		return modelandview;
	}
	
	public @ResponseBody Object postSignup(@Valid Signup signup,BindingResult result, HttpServletResponse response, HttpServletRequest request){
		if (signup.getLoginmethod().equals("web")) {
		}
		return request;
	}
	
}
