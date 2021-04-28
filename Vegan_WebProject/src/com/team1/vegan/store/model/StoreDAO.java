package com.team1.vegan.store.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public interface StoreDAO {
	ArrayList<StoreVO> getAllStore() throws SQLException;
	ArrayList<StoreVO> findByArea(int areaId) throws SQLException;
	ArrayList<StoreVO> findByName(String name) throws SQLException;
	StoreVO getStoreDetail(int storeId) throws SQLException;
	void addHitCount(int storeId) throws SQLException;
	ArrayList<StoreImageVO> getBestNine() throws SQLException;
	MapVO findStoreMap(int storeId) throws SQLException;
	StoreImageVO findStoreImage(int storeId) throws SQLException;
	// asdf
}
