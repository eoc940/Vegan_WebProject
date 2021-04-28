package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class FindByTitleController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
		String title = request.getParameter("title");
		String path = "boardList.jsp";
		
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		try {
			list = BoardDAOImpl.getInstance().findByTitle(title);
			request.setAttribute("list", list);
		} catch (SQLException e) {
			
		}
		
		return new ModelAndView(path);
	}

}
