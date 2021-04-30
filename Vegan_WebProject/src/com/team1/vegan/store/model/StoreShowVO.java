package com.team1.vegan.store.model;

public class StoreShowVO {
	
	private String area;
	private String name;
	private String imageUrl;
	private int storeId;
	public StoreShowVO() {
		super();
	}
	public StoreShowVO(String area, String name, String imageUrl, int storeId) {
		super();
		this.area = area;
		this.name = name;
		this.imageUrl = imageUrl;
		this.storeId = storeId;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	@Override
	public String toString() {
		return "StoreShowVO [area=" + area + ", name=" + name + ", imageUrl=" + imageUrl + ", storeId=" + storeId + "]";
	}
	
	

}
