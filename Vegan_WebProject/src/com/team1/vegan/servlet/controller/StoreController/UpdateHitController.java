package com.team1.vegan.servlet.controller.StoreController;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.store.model.StoreDAOImpl;

public class UpdateHitController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String memberId = request.getParameter("member");
		int storeId = Integer.parseInt(request.getParameter("store"));		
		
		try {
			boolean isCheckedHit = StoreDAOImpl.getInstance().ischeckedHit(storeId, memberId);
			if(isCheckedHit) {				
				StoreDAOImpl.getInstance().minusHitCount(storeId, memberId);
			}else {
				StoreDAOImpl.getInstance().plusHitCount(storeId, memberId);
			}			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
