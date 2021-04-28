package com.team1.vegan.servlet.controller.BoardController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class BoardDeleteController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String path = "boardList.jsp";
		
		//123123
		
		return new ModelAndView(path);
	}

}
