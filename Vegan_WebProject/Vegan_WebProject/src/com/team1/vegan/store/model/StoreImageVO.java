package com.team1.vegan.store.model;

public class StoreImageVO {
	private String imageUrl;
	private int storeId;
	private String name;
	
	public StoreImageVO(String imageUrl, int storeId, String name) {
		super();
		this.imageUrl = imageUrl;
		this.storeId = storeId;
		this.name = name;
	}
	public StoreImageVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "StoreImageVO [imageUrl=" + imageUrl + ", storeId=" + storeId + ", name=" + name + "]";
	}
	
}
