package com.example.spring03.model.board.dto;

import java.util.Date;

public class BoardDTO{
	int bno;
	String writer;
	String title;
	String content;
	Date regdate;
	int viewcnt;
	String adck;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getAdck() {
		return adck;
	}
	public void setAdck(String adck) {
		this.adck = adck;
	}
	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + ", adck=" + adck + ", viewcnt=" + viewcnt + "]";
	}
	public BoardDTO() {
		
	}
	public BoardDTO(int bno, String writer, String title, String content, int viewcnt, Date regdate, String adck) {
		this.bno = bno;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.viewcnt = viewcnt;
		this.regdate = regdate;
		this.adck = adck;
	}
}