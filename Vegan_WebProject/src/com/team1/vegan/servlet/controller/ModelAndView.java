package com.team1.vegan.servlet.controller;
/*
 * 결과 페이지의 이름과
 * 이동방식(forward | redirect)에 대한 정보를
 * 담고 있는 객체
 */
public class ModelAndView {
	private String path;
	private boolean isRedirect;
	
	public ModelAndView(String path, boolean isRedirect) {
		super();
		this.path = path;
		this.isRedirect = isRedirect;
	}

	public ModelAndView() {
		super();
	}

	public ModelAndView(String path) {
		super();
		this.path = path;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	@Override
	public String toString() {
		return "ModelAndView [path=" + path + ", isRedirect=" + isRedirect + "]";
	}
	
	
}


