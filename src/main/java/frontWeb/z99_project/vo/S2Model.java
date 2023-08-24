package frontWeb.z99_project.vo;
//frontWeb.z99_project.vo.S2Model
public class S2Model {
	private String model;
	private String brand;
	private String kind;
	private int expense;

	public S2Model() {
		// TODO Auto-generated constructor stub
	}

	public S2Model(String model, String brand, String kind, int expense) {
		this.model = model;
		this.brand = brand;
		this.kind = kind;
		this.expense = expense;
	}

	public S2Model(String model, String brand, int expense) {
		super();
		this.model = model;
		this.brand = brand;
		this.expense = expense;
	}

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

}
