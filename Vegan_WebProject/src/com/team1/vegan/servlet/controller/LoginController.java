package com.team1.vegan.servlet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team1.vegan.user.model.MemberDAOImpl;
import com.team1.vegan.user.model.MemberVO;



public class LoginController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		String path ="loginFail.jsp";
		System.out.println("여긴가");
		
		try {
			MemberVO mvo = MemberDAOImpl.getInstance().login(memberId, password);
			System.out.println();
			HttpSession session = request.getSession();
			
			if(mvo!=null) {
				session.setAttribute("vo", mvo);
				System.out.println("JSESSIONID:: "+session.getId());
				path = "loginSuccess.jsp";
			}
		}catch(Exception e) {
			
		}
		return new ModelAndView(path);
	}

}
