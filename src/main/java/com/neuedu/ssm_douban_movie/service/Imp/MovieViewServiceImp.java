package com.neuedu.ssm_douban_movie.service.Imp;

import com.neuedu.ssm_douban_movie.entity.Movie;
import com.neuedu.ssm_douban_movie.service.MovieViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieViewServiceImp implements MovieViewService {

	@Autowired

	@Override
	public Movie view(Movie movie) {
		return null;
	}

	@Override
	public List<Movie> queryAll(Movie movie) {
		return null;
	}
}
