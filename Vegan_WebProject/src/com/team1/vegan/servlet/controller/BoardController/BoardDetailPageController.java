package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.comment.model.CommentDAOImpl;
import com.team1.vegan.comment.model.CommentVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.user.model.MemberVO;

public class BoardDetailPageController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		int boardId = Integer.parseInt(request.getParameter("boardId"));
		
		BoardVO board = null;
		ArrayList<CommentVO> commentList=new ArrayList<CommentVO>();
		MemberVO mvo=null;
		String path = "boardDetailPage.jsp";
		
		HttpSession session=request.getSession();
		mvo=(MemberVO) session.getAttribute("vo");
		
		try {
			BoardDAOImpl.getInstance().addViewCount(boardId);
			board = BoardDAOImpl.getInstance().getPost(boardId);
			commentList=CommentDAOImpl.getInstance().getAllComment(boardId);
			
		} catch (SQLException e) {
			
		}
		request.setAttribute("board", board);
		request.setAttribute("commentList", commentList);
		return new ModelAndView(path);
	}
	
}
