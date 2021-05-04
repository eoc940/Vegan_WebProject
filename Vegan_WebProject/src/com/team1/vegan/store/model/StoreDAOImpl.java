package com.team1.vegan.store.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.apache.catalina.util.ServerInfo;

import util.DataSourceManager;

public class StoreDAOImpl implements StoreDAO {

	private DataSource ds;

	private static StoreDAOImpl dao = new StoreDAOImpl();
/*
	private StoreDAOImpl() {
		try {
			Class.forName(ServerInfo.getServerInfo());
			System.out.println("드라이버 로딩 성공");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패...");
		}
	}

	*/
	private StoreDAOImpl() { 
		ds = DataSourceManager.getInstance().getConnection(); 
	}
	 
	public static StoreDAOImpl getInstance() {
		return dao;
	}

	public Connection getConnection() throws SQLException {
		System.out.println("디비연결 성공....");
		return ds.getConnection();
	}

	public void closeAll(PreparedStatement ps, Connection conn) throws SQLException {
		if (ps != null)
			ps.close();
		if (conn != null)
			conn.close();
	}

	public void closeAll(ResultSet rs, PreparedStatement ps, Connection conn) throws SQLException {
		if (rs != null)
			rs.close();
		closeAll(ps, conn);

	}

	@Override
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

	@Override
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

	@Override
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
			name = "%" + name + "%";
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

	@Override
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

	@Override
	public void plusHitCount(int storeId, String memberId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			String query = "UPDATE store SET hit=hit+1 WHERE store_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			System.out.println(ps.executeUpdate() + "row update OK!!");
			String query2 = "insert into click_hit values (?,?)";
			ps = conn.prepareStatement(query2);
			ps.setString(1, memberId);
			ps.setInt(2, storeId);
			System.out.println(ps.executeUpdate() + "row update OK!!");
		} finally {
			closeAll(ps, conn);
		}

	}
	
	@Override
	public void minusHitCount(int storeId, String memberId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			String query = "UPDATE store SET hit=hit-1 WHERE store_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			System.out.println(ps.executeUpdate() + "row update OK!!");
			String query2 = "delete from click_hit where member_id=? and store_id=?";
			ps = conn.prepareStatement(query2);
			ps.setString(1, memberId);
			ps.setInt(2, storeId);
			System.out.println(ps.executeUpdate() + "row update OK!!");
		} finally {
			closeAll(ps, conn);
		}
	}
	
	@Override
	public boolean ischeckedHit(int storeId, String memberId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			String query = "select * from click_hit where store_id=? and member_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			ps.setString(2, memberId);
			rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		}finally {
			closeAll(rs, ps, conn);
		}
		return false;
	}
	
	@Override
	public int totalHit(int storeId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int total = 0;
		try {
			conn = getConnection();
			String query = "select count(*) from click_hit where store_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			rs = ps.executeQuery();
			if(rs.next()) {
				total = rs.getInt(1);
			}
		}finally {
			closeAll(rs, ps, conn);
		}
		return total;
	}

	@Override
	public ArrayList<StoreImageVO> getBestNine() throws SQLException {
		ArrayList<StoreImageVO> list = new ArrayList<StoreImageVO>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = getConnection();	
			String query = "select s.store_id ,s.name, sm.image_url from Store s, store_image sm "
					+ "where s.store_id = sm.store_id and sm.image_url like '%-1%'  order by hit desc limit 9";
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new StoreImageVO(rs.getString("sm.image_url"),rs.getInt("s.store_id"),rs.getString("s.name")));
			}
		} finally {
			closeAll(rs, ps, conn);
		}
		return list;
	}

	@Override
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
	
	@Override
	public StoreImageVO findStoreImage(int storeId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StoreImageVO image = null;
		
		try {	
			conn = getConnection();

			String query = "select s.name, i.store_id, i.image_url from store s, store_image i where s.store_id=? and s.store_id=i.store_id and image_url like '%-1%'";

			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			rs = ps.executeQuery();
			if(rs.next()) {
				image = new StoreImageVO(
						rs.getString("i.image_url"),
						rs.getInt("i.store_id"),
						rs.getString("s.name"));
				System.out.println(image);
			}
		}finally {
			closeAll(rs, ps, conn);
		}
		
		return image;
	}
	@Override
	public StoreImageVO findMainFoodImage(int storeId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StoreImageVO image = null;
		
		try {	
			conn = getConnection();

			String query = "select s.name, i.store_id, i.image_url from store s, store_image i where s.store_id=? and s.store_id=i.store_id and image_url like '%-3%'";

			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			rs = ps.executeQuery();
			if(rs.next()) {
				image = new StoreImageVO(
						rs.getString("i.image_url"),
						rs.getInt("i.store_id"),
						rs.getString("s.name"));
				System.out.println(image);
			}
		}finally {
			closeAll(rs, ps, conn);
		}
		
		return image;
	}

	@Override
	public StoreImageVO findMenuImage(int storeId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StoreImageVO image = null;
		
		try {	
			conn = getConnection();


			String query = "select s.name, i.store_id, i.image_url from store s, store_image i where s.store_id=? and s.store_id=i.store_id and image_url like '%-2%'";

			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			rs = ps.executeQuery();
			if(rs.next()) {
				image = new StoreImageVO(
						rs.getString("i.image_url"),
						rs.getInt("i.store_id"),
						rs.getString("s.name"));
				System.out.println(image);
			}
			//String imageUrl, int storeId, String name
		}finally {
			closeAll(rs, ps, conn);
		}
		
		return image;
	}

	

	@Override
	public AreaVO findStoreArea(int storeId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		AreaVO area = null;
		try {
			conn = getConnection();
			String query = "select a.area_id, a.name from store s, area a where a.area_id=s.area_id and s.store_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, storeId);
			rs = ps.executeQuery();
			if(rs.next()) {
				area = new AreaVO(
						rs.getInt("a.area_id"),
						rs.getString("a.name")
						); 
			}
		}finally {
			closeAll(rs, ps, conn);
		}
		return area;
	}

	@Override
	public ArrayList<AreaVO> getAllArea() throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<AreaVO> areaList = new ArrayList<AreaVO>();
		try {
			conn = getConnection();
			String query = "select area_id, name from area";
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				AreaVO avo = new AreaVO(
						rs.getInt("area_id"),
						rs.getString("name")
						);
				areaList.add(avo);
			}
 		}finally {
			closeAll(rs, ps, conn);
		}
		return areaList;
	}

	@Override
	public ArrayList<AreaGraphVO> getStoreCountByArea() throws SQLException {
		ArrayList<AreaGraphVO> list = new ArrayList<AreaGraphVO>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			String query = "select count(s.name), a.name from store s, area a where a.area_id=s.area_id group by a.name order by count(s.name) desc limit 5";
			System.out.println("preparedstatement...getStoreCountByArea()...");
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new AreaGraphVO(rs.getInt("count(s.name)"),rs.getString("a.name")));
			}
			
		} finally {
			closeAll(rs, ps, conn);
		}
		return list;
	}
	
}