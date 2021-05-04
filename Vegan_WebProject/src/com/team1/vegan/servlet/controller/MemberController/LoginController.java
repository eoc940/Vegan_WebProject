package com.team1.vegan.servlet.controller.MemberController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.user.model.MemberDAOImpl;
import com.team1.vegan.user.model.MemberVO;



public class LoginController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		String path ="loginFail.jsp";
		
		try {
			MemberVO mvo = MemberDAOImpl.getInstance().login(memberId, password);
			MemberVO testVO = MemberDAOImpl.getInstance().getMember(memberId);
			HttpSession session = request.getSession();

			if(mvo!=null) {
				session.setAttribute("vo", mvo);
				System.out.println("JSESSIONID:: "+session.getId());
				path = "loginSuccess.jsp";
			}
			else if(testVO == null){
				request.setAttribute("wrongId", "wrongId");
			}
			else {
				request.setAttribute("wrongPassword", "wrongPassword");
			}
			
		}catch(Exception e) {
			
		}
		return new ModelAndView(path);
	}

}
