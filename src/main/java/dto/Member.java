package dto;

import java.sql.Timestamp;

public class Member {
	private String pwd;
	private String name;
	private String email;
	private String zip_num;
	private String address;
	private String phone;
	private String useyn;
	private int point;
	private String level;
	private Timestamp indate;

	public String getPwd() {
		return pwd;
	}

	public Member setPwd(String pwd) {
		this.pwd = pwd;
		return this;
	}

	public String getName() {
		return name;
	}

	public Member setName(String name) {
		this.name = name;
		return this;
	}

	public String getEmail() {
		return email;
	}

	public Member setEmail(String email) {
		this.email = email;
		return this;
	}

	public String getZip_num() {
		return zip_num;
	}

	public Member setZip_num(String zip_num) {
		this.zip_num = zip_num;
		return this;
	}

	public String getAddress() {
		return address;
	}

	public Member setAddress(String address) {
		this.address = address;
		return this;
	}

	public String getPhone() {
		return phone;
	}

	public Member setPhone(String phone) {
		this.phone = phone;
		return this;
	}

	public String getUseyn() {
		return useyn;
	}

	public Member setUseyn(String useyn) {
		this.useyn = useyn;
		return this;
	}

	public Timestamp getIndate() {
		return indate;
	}

	public Member setIndate(Timestamp indate) {
		this.indate = indate;
		return this;
	}

	public int getPoint() {
		return point;
	}

	public Member setPoint(int point) {
		this.point = point;
		return this;
	}

	public String getLevel() {
		return level;
	}

	public Member setLevel(String level) {
		this.level = level;
		return this;
	}

}
