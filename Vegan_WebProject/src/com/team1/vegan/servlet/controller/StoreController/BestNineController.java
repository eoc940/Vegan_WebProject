package com.team1.vegan.servlet.controller.StoreController;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;
import com.team1.vegan.store.model.StoreDAOImpl;
import com.team1.vegan.store.model.StoreImageVO;

public class BestNineController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<StoreImageVO> list=new ArrayList<StoreImageVO>();
		try {
			PrintWriter out = response.getWriter();
			list=StoreDAOImpl.getInstance().getBestNine();
			JSONArray ja = new JSONArray(list);
			out.println(ja.toString()); 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

}
