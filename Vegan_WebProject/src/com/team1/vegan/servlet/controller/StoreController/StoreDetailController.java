package com.team1.vegan.servlet.controller.StoreController;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.store.model.MapVO;
import com.team1.vegan.store.model.StoreDAOImpl;
import com.team1.vegan.store.model.StoreImageVO;
import com.team1.vegan.store.model.StoreVO;

public class StoreDetailController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
		int storeId = Integer.parseInt(request.getParameter("storeId"));
		String path = "storeDetail.jsp";
		StoreVO svo = null;
		StoreImageVO ivo = null;
		MapVO mvo = null;
		try {
			svo = StoreDAOImpl.getInstance().getStoreDetail(storeId);
			ivo = StoreDAOImpl.getInstance().findStoreImage(storeId);
			mvo = StoreDAOImpl.getInstance().findStoreMap(storeId);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("svo", svo);
		request.setAttribute("ivo", ivo);
		request.setAttribute("mvo", mvo);
		
		return new ModelAndView(path);
	}

}
