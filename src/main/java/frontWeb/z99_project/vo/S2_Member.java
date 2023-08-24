package frontWeb.z99_project.vo;

import java.util.Date;

public class S2_Member {
	private String id;
	private String pass;
	private String name;
	private String phone;
	private String email;
	private String address;
	private Date signup_date;
	private String signup_dateS;
	public S2_Member(String id, String pass, String name, String phone, String email, String address, String auth,
			int point) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.auth = auth;
		this.point = point;
	}
	
	public S2_Member(String id, String pass, String name, String phone, String email, String address,
			String signup_dateS, String auth, int point) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.signup_dateS = signup_dateS;
		this.auth = auth;
		this.point = point;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getSignup_date() {
		return signup_date;
	}
	public void setSignup_date(Date signup_date) {
		this.signup_date = signup_date;
	}
	public String getSignup_dateS() {
		return signup_dateS;
	}
	public void setSignup_dateS(String signup_dateS) {
		this.signup_dateS = signup_dateS;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public S2_Member(String id, String pass, String name, String phone, String email, String address, Date signup_date,
			String auth, int point) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.signup_date = signup_date;
		this.auth = auth;
		this.point = point;
	}
	public S2_Member(String id, String pass) { // 로그인
		this.id = id;
		this.pass = pass;
	}
	public S2_Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String auth;
	private int point;
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
