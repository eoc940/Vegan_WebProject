package com.team1.vegan.comment.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.team1.vegan.board.model.BoardVO;

import util.DataSourceManager;

public class CommentDAOImpl implements CommentDAO {
	
	private DataSource ds;
	private static CommentDAOImpl dao = new CommentDAOImpl();
	public CommentDAOImpl() {
		ds = DataSourceManager.getInstance().getConnection();
	}
	public static CommentDAOImpl getInstance() {
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

	@Override
	public void deleteComment(int commentId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = getConnection();
			
			String query = "delete from comment where comment_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, commentId);
			
			System.out.println(ps.executeUpdate()+"row DELETE OK!!");
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(ps, conn);
		}
	}

	@Override
	public ArrayList<CommentVO> getAllComment(int boardId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<CommentVO> list = new ArrayList<CommentVO>();
		try {
			conn = getConnection();
			String query = "SELECT comment_id,content,date,board_id,member_id FROM comment WHERE board_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, boardId);
			System.out.println("PreparedStatement...getAllComment()..");
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new CommentVO(
						rs.getInt("comment_id"),
						rs.getString("content"),
						rs.getString("date"),
						rs.getString("member_id"),
						rs.getInt("board_id")));
			}
			
		}finally {
			closeAll(rs, ps, conn);
		}
		return list;
		
	}
	@Override
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

}
