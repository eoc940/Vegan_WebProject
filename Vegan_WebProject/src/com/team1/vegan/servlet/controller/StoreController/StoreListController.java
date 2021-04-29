package com.team1.vegan.servlet.controller.StoreController;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.store.model.AreaVO;
import com.team1.vegan.store.model.StoreDAOImpl;
import com.team1.vegan.store.model.StoreImageVO;
import com.team1.vegan.store.model.StoreVO;

public class StoreListController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {

		ArrayList<StoreVO> storeList = new ArrayList<StoreVO>();
		ArrayList<AreaVO> areaList = new ArrayList<AreaVO>();
		ArrayList<StoreImageVO> imageList = new ArrayList<StoreImageVO>();
		String path = "storeList.jsp";
		
		try {
			storeList = StoreDAOImpl.getInstance().getAllStore();
			for(StoreVO svo : storeList) {
				AreaVO avo = StoreDAOImpl.getInstance().findStoreArea(svo.getStoreId());
				areaList.add(avo);
				StoreImageVO ivo = StoreDAOImpl.getInstance().findStoreImage(svo.getStoreId());
				imageList.add(ivo);
			}
			
			request.setAttribute("storeList", storeList);
			request.setAttribute("areaList", areaList);
			request.setAttribute("imageList", imageList);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return new ModelAndView(path);
	}
}
