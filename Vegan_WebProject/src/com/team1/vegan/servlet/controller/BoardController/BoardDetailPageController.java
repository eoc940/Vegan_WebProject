package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class BoardDetailPageController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		int boardId = Integer.parseInt(request.getParameter("boardId"));
		
		BoardVO board = null;
		String path = "boardDetailPage.jsp";
		try {
			board = BoardDAOImpl.getInstance().getPost(boardId);
			BoardDAOImpl.getInstance().addViewCount(boardId);
		} catch (SQLException e) {
			
		}
		
		request.setAttribute("board", board);
		return new ModelAndView(path);
	}
	
}
