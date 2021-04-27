package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.team1.vegan.board.model.BoardVO;
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
	
	public ArrayList<StoreVO> getBestNine() throws SQLException {
		ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String query = "select store_id,name,address,hit,description,url,area_id,source from store order by hit desc limit 9";
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new StoreVO(
									rs.getInt(1),
									rs.getString(2),
									rs.getString(3),
									rs.getInt(4),
									rs.getString(5),
									rs.getString(6),
									rs.getInt(7),
									rs.getString(8)
						));
			}
		}finally {
			closeAll(rs, ps, conn);
		}
		return list;
	}
	
	public void addHitCount(int storeId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			String query = "UPDATE store SET hit=hit+1 WHERE store_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			System.out.println(ps.executeUpdate()+"row update OK!!");
		}finally {
			closeAll(ps, conn);
		}
		
	}


	
	public static void main(String[] args)throws Exception {
		DaoUnitTest test = new DaoUnitTest();
		ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		list=test.getBestNine();
		for(StoreVO s: list) {
			System.out.println(s);
		}
		System.out.println("=====================");
		
	
	}	
}
