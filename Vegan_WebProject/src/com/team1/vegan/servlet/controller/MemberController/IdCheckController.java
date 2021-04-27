package com.team1.vegan.servlet.controller.MemberController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.user.model.MemberDAOImpl;


public class IdCheckController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response){
		
		
		try {
			PrintWriter out = response.getWriter();
			String memberId = request.getParameter("memberId");
			boolean flag = MemberDAOImpl.getInstance().isExist(memberId);
			out.print(flag);
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return null;
	}

}
