package com.neuedu.ssm_douban_movie.service;

import com.neuedu.ssm_douban_movie.entity.User;
import org.springframework.stereotype.Service;

@Service
public interface LoginService {

	public User login(User user);

}
