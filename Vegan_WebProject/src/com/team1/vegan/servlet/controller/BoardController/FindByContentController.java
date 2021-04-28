package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class FindByContentController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
		String content = request.getParameter("content");
		String path = "boardList.jsp";
		
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		try {
			list = BoardDAOImpl.getInstance().findByContent(content);
			request.setAttribute("list", list);
		} catch (SQLException e) {
			
		}
		
		return new ModelAndView(path);
	}

}
