package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class BoardUpdateController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
		String memberId = request.getParameter("memberId");
		int boardId = Integer.parseInt(request.getParameter("boardId"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		String date = format1.format(time);
		BoardVO vo = new BoardVO(title, content, date, 0, boardId, memberId);
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		String path = "boardList.jsp";
		try {
			BoardDAOImpl.getInstance().updatePost(vo);
			list = BoardDAOImpl.getInstance().getAllPost(1,10);
			request.setAttribute("list", list);
		} catch (SQLException e) {
		
		}
				
		return new ModelAndView(path);
	}

}
