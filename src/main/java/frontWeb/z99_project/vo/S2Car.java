package frontWeb.z99_project.vo;

public class S2Car {
	private int car_number;
	private int distance_driven;
	private String car_plate;
	private int store;
	private String model;

	public S2Car() {
		// TODO Auto-generated constructor stub
	}

	public S2Car(int car_number, int distance_driven, String car_plate, int store, String model) {
		this.car_number = car_number;
		this.distance_driven = distance_driven;
		this.car_plate = car_plate;
		this.store = store;
		this.model = model;
	}

	public int getCar_number() {
		return car_number;
	}

	public void setCar_number(int car_number) {
		this.car_number = car_number;
	}

	public int getDistance_driven() {
		return distance_driven;
	}

	public void setDistance_driven(int distance_driven) {
		this.distance_driven = distance_driven;
	}

	public String getCar_plate() {
		return car_plate;
	}

	public void setCar_plate(String car_plate) {
		this.car_plate = car_plate;
	}

	public int getStore() {
		return store;
	}

	public void setStore(int store) {
		this.store = store;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

}
