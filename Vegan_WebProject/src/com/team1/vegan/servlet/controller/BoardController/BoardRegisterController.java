package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class BoardRegisterController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
		String memberId = request.getParameter("memberId");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		String date = format1.format(time);
		int boardId = 0;
		try {
			boardId = BoardDAOImpl.getInstance().maxId() + 1;
		} catch (SQLException e1) {
			
		}

		BoardVO vo = new BoardVO(title, content, date, 0, boardId, memberId);
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		String path = "boardList.do";
		try {
			BoardDAOImpl.getInstance().writePost(vo);
			list = BoardDAOImpl.getInstance().getAllPost(10,0);
			request.setAttribute("list", list);
		} catch (SQLException e) {
		
		}
				
		return new ModelAndView(path);
	}
	
}
