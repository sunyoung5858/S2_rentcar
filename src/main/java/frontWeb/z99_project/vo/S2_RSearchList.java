package frontWeb.z99_project.vo;

import java.util.Date;

public class S2_RSearchList {
//SELECT R."reservation_number", TO_CHAR(R."startdate",'YYYY-MM-DD') AS "startdate" 
//	,TO_CHAR(R."enddate",'YYYY-MM-DD')  AS "enddate", R."car_number", R."id", M."name", M."phone", S."store_name"	
	private int reservation_number;
	private Date startdate;
	private String startdateS;
	private Date enddate;
	private String enddateS;
	private int car_number;
	private String id;
	private String name;
	private String phone;
	private String store_name;
	

	public S2_RSearchList(int reservation_number, String startdateS, String enddateS, int car_number, String id,
			String name, String phone, String store_name) {
		super();
		this.reservation_number = reservation_number;
		this.startdateS = startdateS;
		this.enddateS = enddateS;
		this.car_number = car_number;
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.store_name = store_name;
	}


	public S2_RSearchList(int reservation_number, Date startdate, Date enddate, int car_number, String id, String name,
			String phone, String store_name) {
		super();
		this.reservation_number = reservation_number;
		this.startdate = startdate;
		this.enddate = enddate;
		this.car_number = car_number;
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.store_name = store_name;
	}


	public int getReservation_number() {
		return reservation_number;
	}


	public void setReservation_number(int reservation_number) {
		this.reservation_number = reservation_number;
	}


	public Date getStartdate() {
		return startdate;
	}


	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}


	public String getStartdateS() {
		return startdateS;
	}


	public void setStartdateS(String startdateS) {
		this.startdateS = startdateS;
	}


	public Date getEnddate() {
		return enddate;
	}


	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}


	public String getEnddateS() {
		return enddateS;
	}


	public void setEnddateS(String enddateS) {
		this.enddateS = enddateS;
	}


	public int getCar_number() {
		return car_number;
	}


	public void setCar_number(int car_number) {
		this.car_number = car_number;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
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


	public String getStore_name() {
		return store_name;
	}


	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}


	public S2_RSearchList() {
		super();
		// TODO Auto-generated constructor stub
	}


	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
