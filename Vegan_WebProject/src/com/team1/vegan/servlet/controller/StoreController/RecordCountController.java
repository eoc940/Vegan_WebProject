package com.team1.vegan.servlet.controller.StoreController;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.store.model.StoreDAOImpl;

public class RecordCountController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
		int storeId = Integer.parseInt(request.getParameter("store"));
		
		try {
			PrintWriter out = response.getWriter();
			int totalHitCount = StoreDAOImpl.getInstance().getStoreDetail(storeId).getHit();
			out.print(totalHitCount);
			out.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
