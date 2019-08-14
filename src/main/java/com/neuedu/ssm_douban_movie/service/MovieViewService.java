package com.neuedu.ssm_douban_movie.service;

import com.neuedu.ssm_douban_movie.entity.Movie;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface MovieViewService {

	//
	public Movie view(Movie movie);
	//查询所有电影 以集合形式存储
	public List<Movie>  queryAll(Movie movie);
	//添加评分
}
