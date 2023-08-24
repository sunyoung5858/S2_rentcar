package frontWeb.z99_project.vo;

public class Model {
	private String model;
	private String brand;
	private String kind;
	private int expense;
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getExpense() {
		return expense;
	}
	public void setExpense(int expense) {
		this.expense = expense;
	}
	public Model() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Model(String model, String brand, String kind, int expense) {
		super();
		this.model = model;
		this.brand = brand;
		this.kind = kind;
		this.expense = expense;
	}
}
