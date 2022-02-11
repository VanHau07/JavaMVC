package Traversal.Entity;

public class Bills {
	private long id;
	private String users;
	private String phone;
	private String display_name;
	private String address;
	private double total;
	private Integer quantity;
	private String note;
	private int status;
	private int id_users;
	public int getStatus() {
		return status;
	}
	public int getId_users() {
		return id_users;
	}

	public void setId_users(int id_users) {
		this.id_users = id_users;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Bills() {
		super();
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	
	
	public String getUsers() {
		return users;
	}
	public void setUsers(String users) {
		this.users = users;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDisplay_name() {
		return display_name;
	}
	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	
	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}
