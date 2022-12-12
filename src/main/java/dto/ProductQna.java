package dto;

import java.sql.Timestamp;

public class ProductQna {

	private int prod_cd;
	private int prodq_cd;
	private String subject;
	private String content;
	private String reply;
	private String email;
	private String name;
	private String pwd;
	private String secret;
	private String rep;
	private Timestamp indate;
	public int getProd_cd() {
		return prod_cd;
	}
	public void setProd_cd(int prod_cd) {
		this.prod_cd = prod_cd;
	}
	public int getProdq_cd() {
		return prodq_cd;
	}
	public void setProdq_cd(int prodq_cd) {
		this.prodq_cd = prodq_cd;
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
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSecret() {
		return secret;
	}
	public void setSecret(String secret) {
		this.secret = secret;
	}
	public String getRep() {
		return rep;
	}
	public void setRep(String rep) {
		this.rep = rep;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	
	
	
	
}
