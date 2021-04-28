package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.team1.vegan.board.model.BoardVO;
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


	public ArrayList<StoreVO> getAllStore() throws SQLException {
		ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			String query = "select store_id,name,address,hit,description,url,area_id,source from store";
			System.out.println("preparedstatement...getAllStore...");

			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new StoreVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8)));
			}
		} finally {
			closeAll(rs, ps, conn);
		}
		return list;
	}
	
	public ArrayList<StoreVO> findByArea(int areaId) throws SQLException {
		ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			String query = "select * from store s, area a where a.area_id=? and a.area_id=s.area_id";
			System.out.println("preparedstatement...findByArea()...");
			ps = conn.prepareStatement(query);
			ps.setInt(1, areaId);
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new StoreVO(rs.getInt("s.store_id"), rs.getString("s.name"), rs.getString("s.address"),
						rs.getInt("s.hit"), rs.getString("s.description"), rs.getString("s.url"), areaId,
						rs.getString("s.source")));
			}

		} finally {
			closeAll(rs, ps, conn);
		}

		return list;
	}

	
	public ArrayList<StoreVO> findByName(String name) throws SQLException {
		ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			String query = "select * from Store where name like ?";
			System.out.println("preparedstatement...findByName()...");
			ps = conn.prepareStatement(query);
			name = "%"+name+"%";
			ps.setString(1, name);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				list.add(new StoreVO(rs.getInt("store_id"), rs.getString("name"), rs.getString("address"), rs.getInt("hit"),
						rs.getString("description"), rs.getString("url"), rs.getInt("area_id"),
						rs.getString("source")));
			}

		} finally {
			closeAll(rs, ps, conn);
		}
		return list;
	}
	
	public StoreVO getStoreDetail(int storeId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StoreVO store = new StoreVO();

		try {
			conn = getConnection();
			String query = "select store_id, name, address, hit, description ,source, url, area_id "
					+ "from Store where store_id = ?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			rs = ps.executeQuery();

			if (rs.next()) {
				store = new StoreVO(rs.getInt("store_id"), rs.getString("name"), rs.getString("address"),
						rs.getInt("hit"), rs.getString("description"), rs.getString("url"),
						rs.getInt("area_id"), rs.getString("source"));
			}
		} finally {
			closeAll(rs, ps, conn);
		}

		return store;
	}
	
	public MapVO findStoreMap(int storeId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		MapVO map = null;

		try {
			conn = getConnection();
			String query = "select * from store s, map m where s.store_id = m.store_id and s.store_id = ?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			rs = ps.executeQuery();

			if (rs.next()) {
				map = new MapVO(rs.getFloat("m.latitude"), rs.getFloat("m.longitude"), storeId);
			}
		} finally {
			closeAll(rs, ps, conn);
		}
		return map;
	}
	
	public StoreImageVO findStoreImage(int storeId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StoreImageVO image = null;
		
		try {	
			conn = getConnection();
			String query = "select s.name,i.store_id, i.image_url from store s, store_image i where s.store_id=? and s.store_id=i.store_id";
			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			rs = ps.executeQuery();
			if(rs.next()) {
				image = new StoreImageVO(
						rs.getString("i.image_url"),
						storeId,
						rs.getString("s.name"));
			}
			//String imageUrl, int storeId, String name
		}finally {
			closeAll(rs, ps, conn);
		}
		
		return image;
	}
	
	
	public static void main(String[] args)throws Exception {
		DaoUnitTest test = new DaoUnitTest();
		/*ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		list=test.getBestNine();
		for(StoreVO s: list) {
			System.out.println(s);
		}*/
		/*System.out.println("=====================");
		ArrayList<StoreVO> list1 = new ArrayList<StoreVO>();
		list1 = test.getAllStore();
		for(StoreVO s1: list1) {
			System.out.println(s1);
		}
		/*System.out.println("=====================");
		ArrayList<StoreVO> list2 = new ArrayList<StoreVO>();
		list2 = test.findByArea(310);
		for(StoreVO s2: list2) {
			System.out.println(s2);
			}
		}*/
		/*System.out.println("=====================");
		ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		list=test.findByName("플랜");
		for(StoreVO s: list) {
			System.out.println(s);
		}
		/*System.out.println("=====================");
		StoreVO vo = test.getStoreDetail(42);
		System.out.println(vo);*/
		
		/*MapVO vo = test.findStoreMap(42);
		System.out.println(vo);*/
		
		/*System.out.println("=====================");
		StoreImageVO vo = test.findStoreImage(42);
		System.out.println(vo);*/
		
		System.out.println("=====================");
		test.addHitCount(42);
	}
}
