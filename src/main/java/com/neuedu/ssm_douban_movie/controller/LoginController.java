package com.neuedu.ssm_douban_movie.controller;

import com.neuedu.ssm_douban_movie.entity.User;
import com.neuedu.ssm_douban_movie.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@RequestMapping("/login")
	public  String login(HttpServletRequest req, User user){
		String str = "";

	}

}
