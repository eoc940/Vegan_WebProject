package com.team1.vegan.servlet.controller;

import com.team1.vegan.servlet.controller.BoardController.BoardDeleteController;
import com.team1.vegan.servlet.controller.BoardController.BoardDetailPageController;
import com.team1.vegan.servlet.controller.BoardController.BoardListController;
import com.team1.vegan.servlet.controller.BoardController.CommentDeleteController;
import com.team1.vegan.servlet.controller.BoardController.CommentWriteController;
import com.team1.vegan.servlet.controller.BoardController.BoardRegisterController;
import com.team1.vegan.servlet.controller.BoardController.BoardUpdateController;

import com.team1.vegan.servlet.controller.BoardController.searchBoardController;

import com.team1.vegan.servlet.controller.MemberController.DeleteController;
import com.team1.vegan.servlet.controller.MemberController.IdCheckController;
import com.team1.vegan.servlet.controller.MemberController.LoginController;
import com.team1.vegan.servlet.controller.MemberController.LogoutController;
import com.team1.vegan.servlet.controller.MemberController.MyPageController;
import com.team1.vegan.servlet.controller.MemberController.RegisterController;
import com.team1.vegan.servlet.controller.MemberController.UpdateController;
import com.team1.vegan.servlet.controller.StoreController.AreaGraphController;
import com.team1.vegan.servlet.controller.StoreController.BestNineController;
import com.team1.vegan.servlet.controller.StoreController.CheckHitController;
import com.team1.vegan.servlet.controller.StoreController.FindByStoreAreaController;
import com.team1.vegan.servlet.controller.StoreController.FindByStoreNameController;
import com.team1.vegan.servlet.controller.StoreController.RecordCountController;
import com.team1.vegan.servlet.controller.StoreController.StoreListController;
import com.team1.vegan.servlet.controller.StoreController.UpdateHitController;
import com.team1.vegan.servlet.controller.StoreController.StoreDetailController;


//ControllerFactory에서 이름을 바꿈
public class HandlerMapping {
	private static HandlerMapping factory = new HandlerMapping();
	private HandlerMapping() {}
	public static HandlerMapping getInstance() {
		return factory;
	}
	
	//Component를 생성...command하는 기능...factory 본연의 역할
	public Controller createController(String command) { // controller에서는 인터페이스 부모 타입으로 리턴
		Controller controller = null;

		if(command.equals("Member/register.do")) {
			controller = new RegisterController();
		}if(command.equals("Member/login.do")) {
			controller = new LoginController();
		}if(command.equals("Member/update.do")) {
			controller = new UpdateController();
		}if(command.equals("Member/delete.do")) {
			controller = new DeleteController();
		}if(command.equals("Member/logout.do")) {
			controller = new LogoutController();
		}if(command.equals("Member/idCheck.do")) {
			controller = new IdCheckController();
		}if(command.equals("Member/myPage.do")) {
			controller = new MyPageController();
		}if(command.equals("Board/boardList.do")) {
			controller = new BoardListController();
		}if(command.equals("Board/boardDetailPage.do")) {
			controller = new BoardDetailPageController();
		}if(command.equals("Board/writeComment.do")) {
			controller = new CommentWriteController();
		}if(command.equals("Board/deleteComment.do")) {
			controller = new CommentDeleteController();
		}if(command.equals("Board/boardRegister.do")) {
			controller = new BoardRegisterController();
		}if(command.equals("Board/boardUpdate.do")) {
			controller = new BoardUpdateController();
		}if(command.equals("Board/boardDelete.do")) {
			controller = new BoardDeleteController();
		}if(command.equals("Board/searchBoard.do")) {
			controller = new searchBoardController();
		}if(command.equals("bestNine.do")) {
			controller = new BestNineController();
		}if(command.equals("Store/storeList.do")) {
			controller = new StoreListController();
		}if(command.equals("Store/findByStoreName.do")) {
			controller = new FindByStoreNameController();
		}if(command.equals("Store/findByStoreArea.do")) {
			controller = new FindByStoreAreaController();
		}if(command.equals("Store/storeDetail.do")) {
			controller = new StoreDetailController();
		}if(command.equals("Store/areaGraph.do")) {
			controller = new AreaGraphController();
		}if(command.equals("Store/updateHit.do")) {
			controller = new UpdateHitController();
		}if(command.equals("Store/recordCount.do")) {
			controller = new RecordCountController();
		}if(command.equals("Store/checkHit.do")) {
			controller = new CheckHitController();
		}
		
		return controller;
	}
}



