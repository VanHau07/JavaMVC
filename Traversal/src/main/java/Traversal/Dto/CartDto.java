package Traversal.Dto;

public class CartDto {
	private int quantity;
	private int quantity_adult;
	private int quantity_children;
	private int quantity_child;
	private int quantity_infant;
	private double totalPrice;
	private ProductsDto product;

	public CartDto() {
	}

	public int getQuantity_adult() {
		return quantity_adult;
	}

	public void setQuantity_adult(int quantity_adult) {
		this.quantity_adult = quantity_adult;
	}

	public int getQuantity_children() {
		return quantity_children;
	}

	public void setQuantity_children(int quantity_children) {
		this.quantity_children = quantity_children;
	}

	public int getQuantity_child() {
		return quantity_child;
	}

	public void setQuantity_child(int quantity_child) {
		this.quantity_child = quantity_child;
	}

	public int getQuantity_infant() {
		return quantity_infant;
	}

	public void setQuantity_infant(int quantity_infant) {
		this.quantity_infant = quantity_infant;
	}

	public CartDto(int quantity,int quantity_adult, int quantity_children, int quantity_child, int quantity_infant, double totalPrice,
			ProductsDto product) {
		super();
		this.quantity = quantity;
		this.quantity_adult = quantity_adult;
		this.quantity_children = quantity_children;
		this.quantity_child = quantity_child;
		this.quantity_infant = quantity_infant;
		this.totalPrice = totalPrice;
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public ProductsDto getProduct() {
		return product;
	}

	public void setProduct(ProductsDto product) {
		this.product = product;
	}

}
