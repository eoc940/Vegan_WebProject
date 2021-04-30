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
		ArrayList<StoreVO> storeList = null;
		ArrayList<AreaVO> areaList = null;
		ArrayList<StoreShowVO> storeShowList = new ArrayList<StoreShowVO>();
		String path = "storeList.jsp";
		
		try {
			storeList = StoreDAOImpl.getInstance().getAllStore();
			areaList = StoreDAOImpl.getInstance().getAllArea();
			for(StoreVO svo : storeList) {
				String area = StoreDAOImpl.getInstance().findStoreArea(svo.getStoreId()).getName();
				String imageUrl = StoreDAOImpl.getInstance().findStoreImage(svo.getStoreId()).getImageUrl();
				
				storeShowList.add(new StoreShowVO(
						area, svo.getName(), imageUrl
						));
			}
			
			request.setAttribute("storeShowList", storeShowList);
			request.setAttribute("areaList", areaList);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return new ModelAndView(path);
	}
}
