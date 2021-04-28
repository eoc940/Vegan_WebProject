package com.team1.vegan.comment.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public interface CommentDAO {
	Connection getConnection() throws SQLException ;
	void closeAll(PreparedStatement ps, Connection conn)throws SQLException ;
	void closeAll(ResultSet rs, PreparedStatement ps, Connection conn)throws SQLException ;

	
	void writeComment(CommentVO vo) throws SQLException;
	void deleteComment(int commentId) throws SQLException;
	ArrayList<CommentVO> getAllComment(int boardId) throws SQLException;
	int getLastCommentId() throws SQLException;

}
