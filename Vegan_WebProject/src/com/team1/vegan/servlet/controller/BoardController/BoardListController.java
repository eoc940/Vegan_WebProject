package com.team1.vegan.servlet.controller.BoardController;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team1.vegan.board.model.BoardDAOImpl;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.servlet.controller.Controller;
import com.team1.vegan.servlet.controller.ModelAndView;

public class BoardListController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		//한 페이지 당 보여줄 수 
        final int pageSize = 10;
        //페이지 수 
        int pageGroupSize = 10;

        String pageNum = request.getParameter("pageNum");//페이지 번호

        if (pageNum == null) {
            pageNum = "1";
        }
        
       int currentPage = Integer.parseInt(pageNum);
        int startRow = (currentPage - 1) * pageSize + 1;//한 페이지의 시작글 번호
        int offset=startRow-1;
        int endRow = currentPage * pageSize;//한 페이지의 마지막 글번호
        int count;//전체 글의 수		
        int number=0;//글목록에 표시할 글번호

        
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		String path = "boardList.jsp";
		
		try {
		
			list = BoardDAOImpl.getInstance().getAllPost(pageSize,offset);
			request.setAttribute("list", list);
			count= BoardDAOImpl.getInstance().getAllPostCount();//전체 글의 수
//			pageGroupSize=count/pageSize;
//			if (count % pageSize > 0) {
//				pageGroupSize++;
//			}
			number=count-(currentPage-1)*pageSize;//글목록에 표시할 글번호
            //페이지그룹의 갯수 
            //ex) pageGroupSize가 3일 경우 '[1][2][3]'가 pageGroupCount 개 만큼 있다.  
           int pageGroupCount = count/(pageSize*pageGroupSize)+( count % (pageSize*pageGroupSize) == 0 ? 0 : 1);
            //페이지 그룹 번호 
           //ex) pageGroupSize가 3일 경우  '[1][2][3]'의 페이지그룹번호는 1 이고  '[2][3][4]'의 페이지그룹번호는 2 이다.
            int numPageGroup = (int) Math.ceil((double)currentPage/pageGroupSize);
            request.setAttribute("currentPage", new Integer(currentPage));
            request.setAttribute("startRow", new Integer(startRow));
            request.setAttribute("endRow", new Integer(endRow));
            request.setAttribute("count", new Integer(count));
            request.setAttribute("pageSize", new Integer(pageSize));
            request.setAttribute("number", new Integer(number));
            request.setAttribute("pageGroupSize", new Integer(pageGroupSize));
            request.setAttribute("numPageGroup", new Integer(numPageGroup));
            request.setAttribute("pageGroupCount", new Integer(pageGroupCount));
            
            System.out.println("currentPage: "+currentPage);
            System.out.println("startRow: "+startRow);
            System.out.println("endRow: "+endRow);
            System.out.println("count: "+count);
            System.out.println("pageSize: "+pageSize);
            System.out.println("number: "+currentPage);
            System.out.println("pageGroupSize: "+pageGroupSize);
            System.out.println("numPageGroup: "+numPageGroup);
            System.out.println("pageGroupCount: "+pageGroupCount);
            System.out.println("offset: "+offset);
          
		} catch (SQLException e) {
			
		}
		return new ModelAndView(path);
	}

}
