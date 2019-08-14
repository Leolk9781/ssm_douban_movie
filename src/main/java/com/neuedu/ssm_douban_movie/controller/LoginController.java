package com.neuedu.ssm_douban_movie.controller;

import com.neuedu.ssm_douban_movie.entity.User;
import com.neuedu.ssm_douban_movie.service.LoginService;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

@Controller
public class LoginController {


	@Autowired
	private LoginService loginService;

	@RequestMapping("login")
	public String login() {
		return "login";
	}

	@RequestMapping("index")
	public String index() {
		return "index";
	}

	@RequestMapping("login")
	public  String login(String uId, String pwd){

		User user1 = new User();
		user1.setuId(uId);
		user1.setuPasswd(pwd);
		user1 = loginService.login(user1);
		HashMap<String, String> map=new HashMap<String, String>();
		if (user1==null) {
			map.put("msg", "fail");
		}else {
			map.put("msg", "success");
		}
		JSONObject object=new JSONObject(map);
		return object.toJSONString();
	}

}
