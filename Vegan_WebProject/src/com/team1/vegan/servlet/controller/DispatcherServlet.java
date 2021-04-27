package com.team1.vegan.servlet.controller;

import java.io.IOException; 
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// *.do 쓸때는 *앞에 /붙이면 안된다
@WebServlet(urlPatterns = "*.do", loadOnStartup = 1) //loadOnStartup: 클라이언트의 요청없이도 웹 어플리케이션 시작 시점에 해당 서블릿이 초기화되도록 설정해주는 것
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//String command = request.getParameter("command");
		//위와 같이 hidden으로 들어온 요청 받지 않고 들어온 요청의 전체 주소를 직접 받아와서 앞부분만 자른다.
		
		String requestURI = request.getRequestURI(); //web22_FactoryPattern/find.do
		System.out.println("RequestURI :: " + requestURI);
		
		String contextPath = request.getContextPath();
		System.out.println("ContextPath :: " + contextPath);
		
		String command = requestURI.substring(contextPath.length()+1);// find.do가 command로 저장됨
		
		String path = "index.jsp";
		ModelAndView mv = null;
		Controller controller = HandlerMapping.getInstance().createController(command);
		
		try {
			mv = controller.execute(request, response);
			if(mv!=null) {
				path = mv.getPath();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		if(mv!=null) {
			if(mv.isRedirect()) {
				response.sendRedirect(path);
			} else {
				request.getRequestDispatcher(path).forward(request, response);
			}
		}
	}
}
