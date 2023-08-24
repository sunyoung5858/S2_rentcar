package frontWeb.z99_project.vo;

public class S2Store {
	private int store;
	private String store_name;
	private String store_address;
	private String store_phone;

	public S2Store() {
		// TODO Auto-generated constructor stub
	}
	
	// 지점 등록을 위한
	public S2Store(int store, String store_name, String store_address, String store_phone) {
		this.store = store;
		this.store_name = store_name;
		this.store_address = store_address;
		this.store_phone = store_phone;
	}

	public int getStore() {
		return store;
	}

	public void setStore(int store) {
		this.store = store;
	}

	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public String getStore_address() {
		return store_address;
	}

	public void setStore_address(String store_address) {
		this.store_address = store_address;
	}

	public String getStore_phone() {
		return store_phone;
	}

	public void setStore_phone(String store_phone) {
		this.store_phone = store_phone;
	}

}
