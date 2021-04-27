package com.team1.vegan.board.model;

public class BoardVO {
	private String title;
	private String content;
	private String date;
	private int viewCount;
	private int boardId;	
	private String memberId;
	public BoardVO(String title, String content, String date, int viewCount, int boardId, String memberId) {
		super();
		this.title = title;
		this.content = content;
		this.date = date;
		this.viewCount = viewCount;
		this.boardId = boardId;
		this.memberId = memberId;
	}
	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "BoardVO [title=" + title + ", content=" + content + ", date=" + date + ", viewCount=" + viewCount
				+ ", boardId=" + boardId + ", memberId=" + memberId + "]";
	}
	
	
}
