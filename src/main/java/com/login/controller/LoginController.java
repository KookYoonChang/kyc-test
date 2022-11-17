package com.login.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.login.controller.LoginController;
import com.login.domain.LoginVO;

@Controller
@RequestMapping("/login/*")
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Inject
	//MemberService service;
	// 로그인
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public void getLogin() throws Exception {
		logger.info("get loginPage");
	}
	
	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.POST) public String
	 * login(LoginVO vo, HttpServletRequest req, RedirectAttributes rttr) throws
	 * Exception { logger.info("post login");
	 * 
	 * HttpSession session = req.getSession(); LoginVO login = service.login(vo);
	 * 
	 * if (login == null) { session.setAttribute("member", null);
	 * rttr.addFlashAttribute("msg", false); } else { session.setAttribute("member",
	 * login); } return "redirect:/board/list"; }
	 */
	
}
