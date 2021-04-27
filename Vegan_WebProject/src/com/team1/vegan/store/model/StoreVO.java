package com.team1.vegan.store.model;

public class StoreVO {
	private int storeId;
	private String name;
	private String address;
	private int hit;
	private String description;
	private String url;
	private int areaId;
	private String source;
	public StoreVO(int storeId, String name, String address, int hit, String description, String url, int areaId,
			String source) {
		super();
		this.storeId = storeId;
		this.name = name;
		this.address = address;
		this.hit = hit;
		this.description = description;
		this.url = url;
		this.areaId = areaId;
		this.source = source;
	}
	public StoreVO() {
		super();
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	@Override
	public String toString() {
		return "StoreVO [storeId=" + storeId + ", name=" + name + ", address=" + address + ", hit=" + hit
				+ ", description=" + description + ", url=" + url + ", areaId=" + areaId + ", source=" + source + "]";
	}
	
	
}
