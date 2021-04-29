package com.team1.vegan.store.model;

public class StoreShowVO {
	
	private String area;
	private String name;
	private String imageUrl;
	public StoreShowVO(String area, String name, String imageUrl) {
		super();
		this.area = area;
		this.name = name;
		this.imageUrl = imageUrl;
	}
	public StoreShowVO() {
		super();
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
	@Override
	public String toString() {
		return "StoreShowVO [area=" + area + ", name=" + name + ", imageUrl=" + imageUrl + "]";
	}
	
	

}
