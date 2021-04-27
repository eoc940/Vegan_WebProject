package com.team1.vegan.servlet.controller.MemberController;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.user.model.MemberDAOImpl;
import com.team1.vegan.user.model.MemberVO;

public class RegisterController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address"	);
		String[] areas = request.getParameterValues("areas");
		System.out.println(areas);
		String path = "";
		
		MemberVO mvo = new MemberVO(memberId, password, name, address);
		
		try {
			MemberDAOImpl.getInstance().registerMember(mvo);
			MemberDAOImpl.getInstance().registerAreas(memberId, areas);
			path = "registerSuccess.jsp";
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		
		return new ModelAndView(path);
	}

}
