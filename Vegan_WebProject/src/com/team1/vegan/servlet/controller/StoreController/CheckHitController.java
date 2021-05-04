package com.team1.vegan.servlet.controller.StoreController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.store.model.StoreDAOImpl;

public class CheckHitController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("member");
		int storeId = Integer.parseInt(request.getParameter("store"));		
		
		System.out.println(memberId);
		System.out.println(storeId);
		
		try {
			boolean isCheckedHit = StoreDAOImpl.getInstance().ischeckedHit(storeId, memberId);
			if(isCheckedHit) {				
				PrintWriter out = response.getWriter();
				out.print(1);
				out.close();
			}else {
				PrintWriter out = response.getWriter();
				out.print(0);
				out.close();
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
}
