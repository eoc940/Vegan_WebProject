package com.team1.vegan.store.model;

import java.sql.SQLException;
import java.util.ArrayList;

public interface StoreDAO {
	ArrayList<StoreVO> getAllStore() throws SQLException;
	ArrayList<StoreVO> findByArea(int areaId) throws SQLException;
	ArrayList<StoreVO> findByName(String name) throws SQLException;
	StoreVO getStoreDetail(int storeId) throws SQLException;
	void addHitCount(int storeId) throws SQLException;
	void minusHitCount(int storeId) throws SQLException;
	ArrayList<StoreImageVO> getBestNine() throws SQLException;
	MapVO findStoreMap(int storeId) throws SQLException;
	StoreImageVO findStoreImage(int storeId) throws SQLException;
	StoreImageVO findMainFoodImage(int storeId) throws SQLException;
	StoreImageVO findMenuImage(int storeId) throws SQLException;
	AreaVO findStoreArea(int storeId) throws SQLException;
	ArrayList<AreaVO> getAllArea() throws SQLException;
	ArrayList<AreaGraphVO> getStoreCountByArea() throws SQLException;
}
