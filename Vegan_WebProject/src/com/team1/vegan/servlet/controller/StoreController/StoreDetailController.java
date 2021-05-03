package com.team1.vegan.servlet.controller.StoreController;

import java.sql.SQLException;
import java.util.ArrayList;

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
		StoreImageVO foodvo = null;
		StoreImageVO menuvo = null;
		MapVO mvo = null;
		String memberId = (String) request.getSession().getAttribute("member_id");
		//closestStore는 가장 가까운 음식점 객체
		StoreVO closestStore = null;
		boolean checkHit = false;
		
		try {
			svo = StoreDAOImpl.getInstance().getStoreDetail(storeId);
			foodvo = StoreDAOImpl.getInstance().findMainFoodImage(storeId);
			menuvo = StoreDAOImpl.getInstance().findMenuImage(storeId);
			mvo = StoreDAOImpl.getInstance().findStoreMap(storeId);
			checkHit = StoreDAOImpl.getInstance().ischeckedHit(storeId, memberId);
			
			//알고리즘(해당 음식점에서 가장 가까운 거리의 음식점 찾기)
			ArrayList<StoreVO> storeList = StoreDAOImpl.getInstance().getAllStore();
			float latitude = mvo.getLatitude();
			float longitude = mvo.getLongitude();
			float minimum = Float.MAX_VALUE;
			
			for(StoreVO vo : storeList) {
				float anotherLati = StoreDAOImpl.getInstance().findStoreMap(vo.getStoreId()).getLatitude();
				float anotherLongi = StoreDAOImpl.getInstance().findStoreMap(vo.getStoreId()).getLongitude();
				float latiDistance = Math.abs(latitude-anotherLati);
				float longiDistance = Math.abs(longitude-anotherLongi);
				if(svo.getStoreId()!=vo.getStoreId() && minimum > latiDistance*latiDistance + longiDistance*longiDistance) {
					minimum = latiDistance*latiDistance + longiDistance*longiDistance;
					closestStore = vo;
				}
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("svo", svo);
		request.setAttribute("foodvo", foodvo);
		request.setAttribute("menuvo", menuvo);
		request.setAttribute("mvo", mvo);
		request.setAttribute("closestStore", closestStore);
		request.setAttribute("checkHit", checkHit);
		
		return new ModelAndView(path);
	}

}
