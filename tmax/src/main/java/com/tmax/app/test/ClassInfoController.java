package com.tmax.app.test;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ClassInfoController {
	private static final Logger logger = LoggerFactory.getLogger(ClassInfoController.class);
	
	
	@RequestMapping(value = "/classInfo.do", method = RequestMethod.GET)
	public String getSession(Model model, HttpSession session) throws IOException {
		
		return "classinfo/classInfo";
		
	}


}
