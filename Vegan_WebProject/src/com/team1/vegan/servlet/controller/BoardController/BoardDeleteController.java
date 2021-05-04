package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class BoardDeleteController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
		int boardId = Integer.parseInt(request.getParameter("boardId"));
		
		String path = "boardList.do";
		
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		try {
			BoardDAOImpl.getInstance().deletePost(boardId);
			list = BoardDAOImpl.getInstance().getAllPost(10,0);
			request.setAttribute("list", list);
		} catch (SQLException e) {
			
		}
		
		return new ModelAndView(path);
	}

}
