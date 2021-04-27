package com.team1.vegan.user.model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.sql.DataSource;

import util.DataSourceManager;


public class MemberDAOImpl implements MemberDAO {
	
	private DataSource ds;
	
	private static MemberDAOImpl dao = new MemberDAOImpl();
	
	public MemberDAOImpl() {
		ds = DataSourceManager.getInstance().getConnection();
	}
	
	
	public static MemberDAOImpl getInstance() {
		return dao;
	}

	
	@Override
	public Connection getConnection() throws SQLException {
		System.out.println("디비연결 성공....");
		return ds.getConnection();
	}

	@Override
	public void closeAll(PreparedStatement ps, Connection conn) throws SQLException {
		if(ps!=null) ps.close();		
		if(conn != null) conn.close();
	}

	@Override
	public void closeAll(ResultSet rs, PreparedStatement ps, Connection conn) throws SQLException {
		if(rs != null)	rs.close();
		closeAll(ps, conn);		
		
	}
	@Override
	public void registerMember(MemberVO vo) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn=  getConnection();
			String query = "INSERT INTO member VALUES(?,?,?,?)";
			ps = conn.prepareStatement(query);
	

			System.out.println("PreparedStatement 생성됨...registerMember");
			
			ps.setString(1, vo.getMemberId());
			ps.setString(2, vo.getPassword());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getAddress());
			
			System.out.println(ps.executeUpdate()+" row INSERT OK!!");
		}finally{
			closeAll(ps, conn);
		}
	}


	@Override
	public MemberVO getMember(String memberId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		MemberVO vo = null;
		
		try{
			conn = getConnection();
			//
			String query = "SELECT member_id, password, name, address FROM member WHERE memberId=?";
			ps = conn.prepareStatement(query);
			System.out.println("PreparedStatement....findByIdMember()..");
			
			ps.setString(1,memberId);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				vo =  new MemberVO(memberId, 
								   rs.getString("password"), 
								   rs.getString("name"),
								   rs.getString("address"));
			}
		}finally{
			closeAll(rs, ps, conn);
		}
		return vo;
	}

	@Override
	public void updateMember(MemberVO vo) throws SQLException {
		
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			
			String query = "UPDATE member SET password=? , name=?, address=? WHERE member_id=?";
			ps = conn.prepareStatement(query);
			
			ps.setString(1, vo.getPassword());
			ps.setString(2, vo.getName());
			ps.setString(3, vo.getAddress());
			ps.setString(4, vo.getMemberId());
			
			System.out.println(ps.executeUpdate()+" 명 수정됨...");
		}finally {
			closeAll(ps, conn);
		}
		
	}

	@Override
	public void deleteMember(String memberId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = getConnection();
			
			String query = "delete from member where member_id=?";
			ps = conn.prepareStatement(query);
			ps.setString(1, memberId);
			
			System.out.println(ps.executeUpdate()+"삭제");
			
		
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(ps, conn);
		}
		
		
	}


	@Override
	public void registerAreas(String memberId, String[] areas) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn=  getConnection();
			
			String query = "INSERT INTO interest_area VALUES (?,?)";
			for(String area : areas) {
				ps = conn.prepareStatement(query);
				ps.setString(1, memberId);
				ps.setString(2, area);
				
				System.out.println(ps.executeUpdate()+" row INSERT OK!!");
			}
		}finally{
			closeAll(ps, conn);
		}
	}


	@Override
	public MemberVO login(String memberId, String password) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		MemberVO vo = null;
		
		try {
			conn = getConnection();
			String query = "SELECT member_id, password, name, address FROM member WHERE member_id=? AND password=?";
			ps = conn.prepareStatement(query);
			
			ps.setString(1, memberId);
			ps.setString(2,  password);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				vo=  new MemberVO(memberId, 
							      password, 
							      rs.getString("name"), 
							      rs.getString("address"));
			}
			
		}finally {
			closeAll(rs, ps, conn); 
		}
		return vo;
	}


	@Override
	public boolean isExist(String memberId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean find = false;
		
		try {
			conn = getConnection();
			String query = "SELECT member_id FROM member WHERE member_id=?";
			ps = conn.prepareStatement(query);
			ps.setString(1, memberId);
			rs = ps.executeQuery();
			
			return rs.next();			
					
		}finally {
			closeAll(rs, ps, conn);
		}		
	}


	@Override
	public void updateAreas(String memberId, String[] areas) throws SQLException {
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = getConnection();
			
			String query1 = "delete from interest_area where member_id=?";
			ps = conn.prepareStatement(query1);
			ps.setString(1, memberId);
			
			System.out.println(ps.executeUpdate()+"삭제");
			
			String query2 = "INSERT INTO interest_area VALUES (?,?)";
			
			for(String area : areas) {
				ps = conn.prepareStatement(query2);
				ps.setString(1, memberId);
				ps.setString(2, area);
				
				System.out.println(ps.executeUpdate()+" row INSERT OK!!");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(ps, conn);
		}
		
		
	}
}


