
package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.team1.vegan.board.model.BoardVO;
import com.team1.vegan.comment.model.CommentVO;
import com.team1.vegan.store.model.MapVO;
import com.team1.vegan.store.model.StoreImageVO;
import com.team1.vegan.store.model.StoreVO;

import test.ServerInfo;

public class DaoUnitTest{	
	DaoUnitTest(){
		try {
			Class.forName(ServerInfo.DRIVER_NAME);
			System.out.println("드라이버 로딩 성공...");
			
		}catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패...");
		}
	}
	
	public Connection getConnection() throws SQLException {		
		System.out.println("디비연결 성공....");
		return DriverManager.getConnection(ServerInfo.URL,ServerInfo.USER, ServerInfo.PASS);
	}
	
	public void closeAll(PreparedStatement ps, Connection conn) throws SQLException{
		if(ps!=null) ps.close();		
		if(conn != null) conn.close();
	}
	
	public void closeAll(ResultSet rs, PreparedStatement ps, Connection conn) throws SQLException{		
		if(rs != null)	rs.close();
		closeAll(ps, conn);		
	}
	
	public void writeComment(CommentVO vo) throws SQLException {
		Connection conn = null;
		
		PreparedStatement ps = null;
		try{
					
			conn=  getConnection();
			String query = "INSERT INTO comment VALUES(?,?,now(),?,?)";
			ps = conn.prepareStatement(query);

			System.out.println("PreparedStatement 생성됨...writeComment");
			
			ps.setInt(1, vo.getCommentId());
			ps.setString(2, vo.getContent());
			//ps.setString(3, vo.getDate());
			ps.setInt(3, vo.getBoardId());
			ps.setString(4, vo.getMemberId());
			
			System.out.println(ps.executeUpdate()+" row INSERT OK!!");
		}finally{
			closeAll(ps, conn);
		}
		
	}
	public int getLastCommentId() throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int returnNum=0;
		try {
			conn = getConnection();
			String query = "SELECT MAX(comment_id) FROM comment";
			ps = conn.prepareStatement(query);
			rs=ps.executeQuery();
			if(rs.next()) {
				returnNum=rs.getInt(1);
			}
			
		}finally {
			closeAll(rs, ps, conn);
		}
		return returnNum;
	}


	public static void main(String[] args)throws Exception {
		DaoUnitTest test = new DaoUnitTest();
		test.writeComment(new CommentVO(8,"test","2020","encore",1));
		System.out.println("=====================");
		
	
	}	
}



