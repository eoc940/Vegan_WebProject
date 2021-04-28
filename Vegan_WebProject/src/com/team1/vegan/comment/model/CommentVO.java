package com.team1.vegan.comment.model;

public class CommentVO {
	private int commentId;
	private String content;
	private String date;
	private String memberId;
	private int boardId;
	public CommentVO(int commentId, String content, String date, String memberId, int boardId) {
		super();
		this.commentId = commentId;
		this.content = content;
		this.date = date;
		this.memberId = memberId;
		this.boardId = boardId;
	}
	public CommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
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
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	@Override
	public String toString() {
		return "CommentVO [commentId=" + commentId + ", content=" + content + ", date=" + date + ", memberId="
				+ memberId + ", boardId=" + boardId + "]";
	}
	
	
	
}
