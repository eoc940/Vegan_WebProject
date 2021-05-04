package com.team1.vegan.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.sql.DataSource;
import util.DataSourceManager;

public class BoardDAOImpl implements BoardDAO{
	
	private DataSource ds;
	private static BoardDAOImpl dao = new BoardDAOImpl();
	public BoardDAOImpl() {
		ds = DataSourceManager.getInstance().getConnection();
	}
	public static BoardDAOImpl getInstance() {
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
	public BoardVO getPost(int boardId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		BoardVO vo=null;
		try{
			conn=  getConnection();
			String query = "SELECT board_id,title,content,date,view_count,member_id FROM board WHERE board_id=?";
			ps = conn.prepareStatement(query);
			System.out.println("PreparedStatement 생성됨...getPost");
			
			ps.setInt(1, boardId);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				vo =  new BoardVO(rs.getString("title"),
						rs.getString("content"),
						rs.getString("date"),
						rs.getInt("view_count"),
						boardId,
						rs.getString("member_id"));
			}
		}finally{
			closeAll(rs, ps, conn);
		}
		return vo;
	}

	@Override
	public void writePost(BoardVO vo) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn=  getConnection();
			String query = "INSERT INTO board VALUES(?,?,?,?,?,?)";
			ps = conn.prepareStatement(query);

			System.out.println("PreparedStatement 생성됨...writePost");
			
			ps.setInt(1, vo.getBoardId());
			ps.setString(2, vo.getTitle());
			ps.setString(3, vo.getContent());
			ps.setString(4, vo.getDate());
			ps.setInt(5, vo.getViewCount());
			ps.setString(6, vo.getMemberId());
			
			System.out.println(ps.executeUpdate()+" row INSERT OK!!");
		}finally{
			closeAll(ps, conn);
		}
		
	}

	@Override
	public void updatePost(BoardVO vo) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			String query = "UPDATE board SET title=? , content=?, date=?, view_count=?, member_id=? WHERE board_id=?";
			ps = conn.prepareStatement(query);
			
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());
			ps.setString(3, vo.getDate());
			ps.setInt(4, vo.getViewCount());
			ps.setString(5, vo.getMemberId());
			ps.setInt(6, vo.getBoardId());
			
			System.out.println(ps.executeUpdate()+"row UPDATE OK!! ");
		}finally {
			closeAll(ps, conn);
		}
	}

	@Override
	public void deletePost(int boardId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = getConnection();
			
			String query = "delete from board where board_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, boardId);
			
			System.out.println(ps.executeUpdate()+"row DELETE OK!!");
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(ps, conn);
		}
		
	}

	@Override
	public void addViewCount(int boardId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			String query = "UPDATE board SET view_count=view_count+1 WHERE board_id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, boardId);
			ps.executeUpdate();
		}finally {
			closeAll(ps, conn);
		}
	}

	
	@Override
	 public ArrayList<BoardVO> searchBoard(HashMap<String, Object> listOpt) throws SQLException{
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<BoardVO> list = new ArrayList<>();
		
		String opt = (String)listOpt.get("opt");
        String contents = (String)listOpt.get("contents");
        
		try{
			conn = getConnection();
			if(opt.equals("0")){
				String query = "SELECT board_id,title,content,date,view_count,member_id FROM board WHERE title like ?";
				
				ps = conn.prepareStatement(query);
				System.out.println("PreparedStatement...findByTitle()..");
				String tempContent = "%"+contents+"%";
				ps.setString(1, tempContent);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					list.add(new BoardVO(
							rs.getString("title"),
							rs.getString("content"),
							rs.getString("date"),
							rs.getInt("view_count"),
							rs.getInt("board_id"),
							rs.getString("member_id")));
				}
			}else if(opt.equals("1")) {
				String query = "SELECT board_id,title,content,date,view_count,member_id FROM board WHERE content LIKE concat ('%', ?, '%')";
				
				ps = conn.prepareStatement(query);
				System.out.println("PreparedStatement...findByContent()..");
				
				ps.setString(1, contents);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					list.add(new BoardVO(
							rs.getString("title"),
							rs.getString("content"),
							rs.getString("date"),
							rs.getInt("view_count"),
							rs.getInt("board_id"),
							rs.getString("member_id")));
				}
			}else if(opt.equals("2")) {
				String query = "SELECT board_id,title,content,date,view_count,member_id FROM board WHERE member_id like ?";
				
				ps = conn.prepareStatement(query);
				System.out.println("PreparedStatement...findByWriter()..");
				String tempContent = "%"+contents+"%";
				ps.setString(1, tempContent);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					list.add(new BoardVO(
							rs.getString("title"),
							rs.getString("content"),
							rs.getString("date"),
							rs.getInt("view_count"),
							rs.getInt("board_id"),
							rs.getString("member_id")));
				}
			}

		}finally{
			closeAll(rs, ps, conn);
		}
		return list;
	}

	@Override
	public ArrayList<BoardVO> getAllPost(int limit, int offset) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<BoardVO> list = new ArrayList<>();
		try {
			conn = getConnection();
			String query = " SELECT R1.* FROM(SELECT * FROM board ORDER BY board_id asc) R1 LIMIT ? OFFSET ?;";
			ps = conn.prepareStatement(query);
			System.out.println("PreparedStatement...getAllPost()..");
			ps.setInt(1, limit);
			ps.setInt(2, offset);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new BoardVO(
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("date"),
						rs.getInt("view_count"),
						rs.getInt("board_id"),
						rs.getString("member_id")));
			}
			
		}finally {
			closeAll(rs, ps, conn);
		}
		return list;
	}
	@Override
	public int maxId() throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int num = 0;
		try {
			conn = getConnection();
			String query = "SELECT MAX(board_id) FROM board";
			ps = conn.prepareStatement(query);
			
			System.out.println("PreparedStatement...maxId()..");
			rs = ps.executeQuery();
			
			if(rs.next()) {
				num = rs.getInt(1);
			}
			
		}finally {
			closeAll(rs, ps, conn);
		}
		
		return num;
	}
	
	@Override
	public int getAllPostCount() throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int allPostCount=0;
		try {
			conn = getConnection();
			String query = "SELECT count(board_id) as count FROM board";
			ps = conn.prepareStatement(query);
			System.out.println("PreparedStatement...getAllPostCount()..");
			
			rs = ps.executeQuery();
			while(rs.next()) {
				allPostCount=rs.getInt(1);
			}
			
		}finally {
			closeAll(rs, ps, conn);
		}
		return allPostCount;
	}


}
