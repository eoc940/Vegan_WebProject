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
			System.out.println(memberId.length() + "???");
			boolean flag = MemberDAOImpl.getInstance().isExist(memberId);
			//입력 안했을때
			if(memberId.length()==0) flag=true;
			//아이디에 빈칸이 포함되어 있을때
			if(memberId.contains(" ")) flag=true;
			out.print(flag);
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return null;
	}

}
