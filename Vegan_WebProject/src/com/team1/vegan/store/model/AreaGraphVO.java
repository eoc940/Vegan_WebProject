package com.team1.vegan.store.model;

public class AreaGraphVO {
	private int countStore;
	private String areaName;
	public AreaGraphVO(int countStore, String areaName) {
		super();
		this.countStore = countStore;
		this.areaName = areaName;
	}
	public AreaGraphVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCountStore() {
		return countStore;
	}
	public void setCountStore(int countStore) {
		this.countStore = countStore;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	@Override
	public String toString() {
		return "AreaGraphVO [countStore=" + countStore + ", areaName=" + areaName + "]";
	}
	
}
