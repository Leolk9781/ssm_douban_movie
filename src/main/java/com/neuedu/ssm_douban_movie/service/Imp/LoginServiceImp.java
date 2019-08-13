package com.neuedu.ssm_douban_movie.service.Imp;

import com.neuedu.ssm_douban_movie.entity.User;
import com.neuedu.ssm_douban_movie.entity.UserExample;
import com.neuedu.ssm_douban_movie.mapper.UserMapper;
import com.neuedu.ssm_douban_movie.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImp implements LoginService {

	@Autowired
	private UserMapper mapper;

	@Override
	public User login(User user) {
		UserExample userExample = new UserExample();
		userExample.createCriteria().andUIdEqualTo(user.getuId()).andUPasswdEqualTo(user.getuPasswd());
		List<User> list = mapper.selectByExample(userExample);
		return list.size() > 0 ? list.get(0) : null;
	}
}
