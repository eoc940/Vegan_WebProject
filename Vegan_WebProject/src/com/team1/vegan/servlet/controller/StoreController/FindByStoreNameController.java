package com.team1.vegan.servlet.controller.StoreController;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.store.model.StoreDAOImpl;
import com.team1.vegan.store.model.StoreImageVO;
import com.team1.vegan.store.model.StoreVO;

public class FindByStoreNameController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String storeName = request.getParameter("storename");
		String path ="showstores.jsp";
		
		ArrayList<StoreVO> svo = null;
		ArrayList<StoreImageVO> ivo = new ArrayList<StoreImageVO>();
		
		try {
			svo = StoreDAOImpl.getInstance().findByName(storeName);
			for(StoreVO vo: svo) {
				int storeId = vo.getStoreId();
				StoreImageVO image = StoreDAOImpl.getInstance().findStoreImage(storeId);
				ivo.add(image);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("storelist", svo);
		request.setAttribute("imagelist", ivo);
		
		return new ModelAndView(path);
	}

}
