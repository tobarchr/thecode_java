package com.codingdojo.ct.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeControllers {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
    @RequestMapping("/createderror")
    public String flashMessages(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("error", "You must train harder!");
        return "redirect:/";
    }
	
    @RequestMapping("/result")
    public String result() {
    	return "code.jsp";
    }
	
	@RequestMapping(value = "/code", method = RequestMethod.POST)
	public String code(@RequestParam(value="codeText") String codeText) {
		if(codeText.equals("bushido")) {
			return "redirect:/result";
		}
		else {
			return "redirect:/createderror";
		}
	}
}
