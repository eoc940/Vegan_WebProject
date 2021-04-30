package com.team1.vegan.store.model;

public class AreaVO {
	private int areaId;
	private String name;
	public AreaVO() {
		super();
	}
	public AreaVO(int areaId, String name) {
		super();
		this.areaId = areaId;
		this.name = name;
	}
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "AreaVO [areaId=" + areaId + ", name=" + name + "]";
	}
	
	
}
