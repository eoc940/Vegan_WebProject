package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class searchBoardController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
        String opt = request.getParameter("opt");
        String contents = request.getParameter("contents");
        String path = "boardList.jsp";
        
        HashMap<String, Object> listOpt = new HashMap<String, Object>();
        listOpt.put("opt", opt);
        listOpt.put("contents", contents);
		
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		try {
			list = BoardDAOImpl.getInstance().searchBoard(listOpt);
			request.setAttribute("list", list);
			request.setAttribute("startRow", 1);
		} catch (SQLException e) {
			
		}
		
		return new ModelAndView(path);
	}

}
