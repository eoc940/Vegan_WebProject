package com.team1.vegan.servlet.controller.StoreController;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.store.model.StoreDAOImpl;
import com.team1.vegan.store.model.StoreVO;

public class StoreListController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		String path = "storeMain.jsp";
		
		try {
			list = StoreDAOImpl.getInstance().getAllStore();
			request.setAttribute("list", list);
		} catch (SQLException e) {
			
		}
		return new ModelAndView(path);
	}
}
