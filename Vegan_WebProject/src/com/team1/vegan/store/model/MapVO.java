package com.team1.vegan.store.model;

public class MapVO {
	private float latitude;
	private float longitude;
	private int storeId;
	public MapVO() {
		super();
	}
	public MapVO(float latitude, float longitude, int storeId) {
		super();
		this.latitude = latitude;
		this.longitude = longitude;
		this.storeId = storeId;
	}
	public float getLatitude() {
		return latitude;
	}
	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
	public float getLongitude() {
		return longitude;
	}
	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	@Override
	public String toString() {
		return "MapVO [latitude=" + latitude + ", longitude=" + longitude + ", storeId=" + storeId + "]";
	}
	
	
}
