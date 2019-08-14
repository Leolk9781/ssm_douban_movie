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

	@RequestMapping("/pages/login")
	public  String login(HttpServletRequest req, User user){
		String str = "/index.jsp";

		User user1 = loginService.login(user);
		if (user1==null){
			str = "/login.jsp";
			req.setAttribute("msg","用户名或密码不能为空");
		}

		return str;
	}

}
