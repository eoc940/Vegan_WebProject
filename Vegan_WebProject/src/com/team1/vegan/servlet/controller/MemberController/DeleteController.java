package com.team1.vegan.servlet.controller.MemberController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.user.model.MemberDAOImpl;
import com.team1.vegan.user.model.MemberVO;

public class DeleteController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId =request.getParameter("memberId");
		String name = request.getParameter("name");
		
		String path = "deleteSuccess.jsp";
		try{			
			MemberDAOImpl.getInstance().deleteMember(memberId);
		
			HttpSession session  = request.getSession();
			
			if(session.getAttribute("vo")!=null) {
				session.invalidate();
			}
			request.setAttribute("name", name);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(path);
	}

}
