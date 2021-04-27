package com.team1.vegan.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public interface MemberDAO {
	
	Connection getConnection() throws SQLException ;
	void closeAll(PreparedStatement ps, Connection conn)throws SQLException ;
	void closeAll(ResultSet rs, PreparedStatement ps, Connection conn)throws SQLException ;
	

	void registerMember(MemberVO vo) throws SQLException;
	MemberVO getMember(String memberId) throws SQLException;
	void updateMember(MemberVO vo) throws SQLException;
	void deleteMember(String memberId) throws SQLException;
	
	void registerAreas(String memberId,String[] areas) throws SQLException;
	void updateAreas(String memberId, String[] areas) throws SQLException;
	

	MemberVO login(String memberId, String password) throws SQLException;	
	
	boolean isExist(String memberId) throws SQLException;
}
