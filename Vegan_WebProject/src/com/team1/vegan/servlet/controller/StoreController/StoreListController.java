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
import com.team1.vegan.store.model.StoreShowVO;
import com.team1.vegan.store.model.StoreVO;

public class StoreListController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {

		String strAreaId = request.getParameter("area");
		String storeName = request.getParameter("storename");
		ArrayList<StoreVO> storeList = new ArrayList<StoreVO>();
		ArrayList<AreaVO> areaList = new ArrayList<AreaVO>();
		ArrayList<StoreImageVO> imageList = new ArrayList<StoreImageVO>();
		ArrayList<StoreShowVO> storeShowList = new ArrayList<StoreShowVO>();
		String path = "storeList.jsp";

		
		try {
			if(strAreaId==null && storeName==null) {//레스토랑 배너 누른경우
				storeList = StoreDAOImpl.getInstance().getAllStore();
				areaList = StoreDAOImpl.getInstance().getAllArea();
				for(StoreVO svo : storeList) {
					String area = StoreDAOImpl.getInstance().findStoreArea(svo.getStoreId()).getName();
					String imageUrl = StoreDAOImpl.getInstance().findStoreImage(svo.getStoreId()).getImageUrl();
					int storeId = StoreDAOImpl.getInstance().getStoreDetail(svo.getStoreId()).getStoreId();
					storeShowList.add(new StoreShowVO(
							area, svo.getName(), imageUrl, storeId
							));
				}
			}else if(strAreaId!=null && storeName==null){//마이페이지에서 지역 누른경우
				int areaId = Integer.parseInt(strAreaId);
				storeList = StoreDAOImpl.getInstance().findByArea(areaId);
				areaList = StoreDAOImpl.getInstance().getAllArea();
				for(StoreVO svo : storeList) {
					String area = StoreDAOImpl.getInstance().findStoreArea(svo.getStoreId()).getName();
					String imageUrl = StoreDAOImpl.getInstance().findStoreImage(svo.getStoreId()).getImageUrl();
					int storeId = StoreDAOImpl.getInstance().getStoreDetail(svo.getStoreId()).getStoreId();
					storeShowList.add(new StoreShowVO(
							area, svo.getName(), imageUrl, storeId
							));
				}
			}else if(strAreaId==null && storeName!=null){//음식점 이름검색한 경우

				storeList = StoreDAOImpl.getInstance().findByName(storeName);
				areaList = StoreDAOImpl.getInstance().getAllArea();
				for(StoreVO svo : storeList) {
					String area = StoreDAOImpl.getInstance().findStoreArea(svo.getStoreId()).getName();
					String imageUrl = StoreDAOImpl.getInstance().findStoreImage(svo.getStoreId()).getImageUrl();
					int storeId = StoreDAOImpl.getInstance().getStoreDetail(svo.getStoreId()).getStoreId();
					storeShowList.add(new StoreShowVO(
							area, svo.getName(), imageUrl, storeId
							));
				}
			}
			
			
			
			request.setAttribute("storeShowList", storeShowList);
			request.setAttribute("areaList", areaList);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return new ModelAndView(path);
	}
}
