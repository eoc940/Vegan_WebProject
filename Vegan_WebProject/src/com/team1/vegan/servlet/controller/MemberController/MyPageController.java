package com.team1.vegan.servlet.controller.MemberController;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.store.model.AreaVO;
import com.team1.vegan.store.model.StoreImageVO;
import com.team1.vegan.user.model.MemberDAOImpl;

public class MyPageController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("memberId");
		
		ArrayList<AreaVO> listA = new ArrayList<AreaVO>();
		ArrayList<BoardVO> listB = new ArrayList<BoardVO>();
		ArrayList<StoreImageVO> listSI = new ArrayList<StoreImageVO>();

		String path = "myPage.jsp";
		try {
			listA = MemberDAOImpl.getInstance().getInterestAreas(memberId);
			listB = BoardDAOImpl.getInstance().findByWriter(memberId);
			listSI = MemberDAOImpl.getInstance().getClickHit(memberId);
						
			request.setAttribute("listA", listA);
			request.setAttribute("listB", listB);
			request.setAttribute("listSI", listSI);
		} catch (SQLException e) {
			
		}
		
		return new ModelAndView(path);
	}

}
