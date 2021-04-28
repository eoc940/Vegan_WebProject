package com.team1.vegan.board.model;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public interface BoardDAO {
	
	Connection getConnection() throws SQLException ;
	void closeAll(PreparedStatement ps, Connection conn)throws SQLException ;
	void closeAll(ResultSet rs, PreparedStatement ps, Connection conn)throws SQLException ;
	

	BoardVO getPost(int boardId) throws SQLException ;
	void writePost(BoardVO vo) throws SQLException ;
	void updatePost(BoardVO vo) throws SQLException ;
	void deletePost(int boardId) throws SQLException ;
	void addViewCount(int boardId) throws SQLException ;
	int maxId() throws SQLException;
	ArrayList<BoardVO> findByTitle(String title) throws SQLException ;
	ArrayList<BoardVO> findByContent(String content) throws SQLException ;
	ArrayList<BoardVO> findByWriter(String writer) throws SQLException ;
	ArrayList<BoardVO> getAllPost() throws SQLException ;
	

}
