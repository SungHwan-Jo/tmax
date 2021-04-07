package com.tmax.app.member;

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
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	@Autowired
	MemberDAO dao;
	
	@RequestMapping(value = "/loginprocess.do", method = RequestMethod.POST)
	public String member_loginprocess(MemberDTO dto, HttpServletResponse response, HttpSession session) throws IOException {
		System.out.println(dto.getMember_name());
		System.out.println(dto.getMember_pwd());
		int count = dao.memberCheck(dto);
		System.out.println("count : " + count);
		if(count > 0) {
			session.setAttribute("member", dto);
		}else {
			return "redirect:/";
		}
		return "redirect:/main.do";
		
	}
	
	@RequestMapping(value = "/getSession.do")
	public String getSession(Model model, HttpSession session) throws IOException {
		model.addAttribute("session", session.getAttribute("member"));
		return "session/getSession";
		
	}
	
	@RequestMapping(value = "/memory.do")
	public String getMemory(Model model, HttpSession session) throws IOException {
		return "memory/memoryTest";
		
	}

}
