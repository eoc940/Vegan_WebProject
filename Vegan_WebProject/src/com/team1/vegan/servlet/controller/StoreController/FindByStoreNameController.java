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

public class FindByStoreNameController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String storeName = request.getParameter("storename");
		String path ="showstores.jsp";
		
		ArrayList<StoreVO> svo = new ArrayList<StoreVO>();
		ArrayList<StoreImageVO> imageList = new ArrayList<StoreImageVO>();
		ArrayList<AreaVO> areaList = new ArrayList<AreaVO>();
		ArrayList<StoreShowVO> storeShowList = new ArrayList<StoreShowVO>();
		
		try {
			svo = StoreDAOImpl.getInstance().findByName(storeName);
			areaList = StoreDAOImpl.getInstance().getAllArea();
			for(StoreVO vo: svo) {
				String area = StoreDAOImpl.getInstance().findStoreArea(vo.getStoreId()).getName();
				int storeId = StoreDAOImpl.getInstance().getStoreDetail(vo.getStoreId()).getStoreId();
				String imageUrl = StoreDAOImpl.getInstance().findStoreImage(vo.getStoreId()).getImageUrl();
				storeShowList.add(new StoreShowVO(
						area, vo.getName(), imageUrl, storeId
						));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("storeShowList", storeShowList);
		request.setAttribute("areaList", areaList);
		
		return new ModelAndView(path);
	}

}
