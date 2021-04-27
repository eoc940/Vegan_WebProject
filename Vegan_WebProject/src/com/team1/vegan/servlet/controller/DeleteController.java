package com.team1.vegan.servlet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team1.vegan.user.model.MemberDAOImpl;
import com.team1.vegan.user.model.MemberVO;

public class DeleteController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId =request.getParameter("memberId");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		
		
		MemberVO mvo = new MemberVO(memberId, password, name, address);
		
		String path="index.jsp";
		try{			
			MemberDAOImpl.getInstance().deleteMember(memberId);
		
			HttpSession session  = request.getSession();
			
			if(session.getAttribute("vo")!=null) {
				session.setAttribute("vo", mvo);
				System.out.println(mvo);
				path = "deleteSuccess.jsp";
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(path);
	}

}
