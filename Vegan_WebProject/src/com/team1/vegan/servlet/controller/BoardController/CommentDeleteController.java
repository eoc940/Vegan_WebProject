package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.comment.model.CommentDAOImpl;
import com.team1.vegan.comment.model.CommentVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class CommentDeleteController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		int commentId = Integer.parseInt(request.getParameter("commentId"));
		int boardId=Integer.parseInt(request.getParameter("boardId"));
		String path = "";
		try {
			CommentDAOImpl.getInstance().deleteComment(commentId);
			path = "deleteCommentSuccess.jsp";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("boardId",boardId);
		return new ModelAndView(path);
	}
	
}
