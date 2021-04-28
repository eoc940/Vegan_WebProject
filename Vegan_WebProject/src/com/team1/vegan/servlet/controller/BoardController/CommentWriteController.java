package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.comment.model.CommentDAOImpl;
import com.team1.vegan.comment.model.CommentVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class CommentWriteController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("memberId");
		String content = request.getParameter("content");
		int boardId = Integer.parseInt(request.getParameter("boardId"));
		String path = "";
		try {
			int commentId = CommentDAOImpl.getInstance().getLastCommentId()+1;
			CommentVO cvo=new CommentVO(commentId,content,"now()",memberId,boardId);
			CommentDAOImpl.getInstance().writeComment(cvo);
			path = "writeCommentSuccess.jsp";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("boardId",boardId);
		return new ModelAndView(path);
	}

}
