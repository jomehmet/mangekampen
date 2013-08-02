package no.ciber.mangekampen.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class RootController {
	
	@RequestMapping("")
	public String root(ModelMap model){
		
		return "APP/index";
	}
	
	@RequestMapping("roo")
	public String roo(ModelMap model){
		
		return "index";
	}
}
