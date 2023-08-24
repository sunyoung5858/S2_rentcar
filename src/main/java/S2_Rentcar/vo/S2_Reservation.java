package S2_Rentcar.vo;

import java.util.Date;

public class S2_Reservation {
	private int reservation_number;
	private Date startdate;
	private String startdateS;
	public S2_Reservation(String startdateS, String enddateS, String id) {
		super();
		this.startdateS = startdateS;
		this.enddateS = enddateS;
		this.id = id;
	}
	public S2_Reservation(String startdateS, String enddateS, int car_number, String id, int reservation_number) {
		super();
		this.reservation_number = reservation_number;
		this.startdateS = startdateS;
		this.enddateS = enddateS;
		this.car_number = car_number;
		this.id = id;
	}
	public S2_Reservation(String startdateS, String enddateS, String id,int reservation_number) {
		super();
		this.reservation_number = reservation_number;
		this.startdateS = startdateS;
		this.enddateS = enddateS;
		this.id = id;
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
	public S2_Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}
	private Date enddate;
	private String enddateS;
	private int car_number;
	private String id;
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
