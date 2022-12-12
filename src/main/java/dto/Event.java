package dto;

import java.sql.Timestamp;

public class Event {

	private int event_cd;
	private String subject;
	private String content;
	private int recom_num;
	private String eventyn;
	private String start_dt;
	private String end_dt;
	private Timestamp indate; 
	private int eimage_cd;
	private String image;
	private int count;
	private String linkyn;	// link 이미지 찾는 부분.
	
	public String getLinkyn() {
		return linkyn;
	}
	public void setLinkyn(String linkyn) {
		this.linkyn = linkyn;
	}
	private int total;
	private int y;
	private int n;
	private String page_mode;
	
	public String getPage_mode() {
		return page_mode;
	}
	public void setPage_mode(String page_mode) {
		this.page_mode = page_mode;
	}
	private int page;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	public int getN() {
		return n;
	}
	public void setN(int n) {
		this.n = n;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getEvent_cd() {
		return event_cd;
	}
	public void setEvent_cd(int event_cd) {
		this.event_cd = event_cd;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRecom_num() {
		return recom_num;
	}
	public void setRecom_num(int recom_num) {
		this.recom_num = recom_num;
	}
	public String getEventyn() {
		return eventyn;
	}
	public void setEventyn(String eventyn) {
		this.eventyn = eventyn;
	}
	public String getStart_dt() {
		return start_dt;
	}
	public void setStart_dt(String start_dt) {
		this.start_dt = start_dt;
	}
	public String getEnd_dt() {
		return end_dt;
	}
	public void setEnd_dt(String end_dt) {
		this.end_dt = end_dt;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public int getEimage_cd() {
		return eimage_cd;
	}
	public void setEimage_cd(int eimage_cd) {
		this.eimage_cd = eimage_cd;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	
	
}
