package Traversal.Dao.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Traversal.Dto.CartDto;
import Traversal.Dto.ProductsDto;
@Repository
public class CartDao extends BaseDao {
	@Autowired
	ProductDao productdao = new ProductDao();

	// Add vao gio hang
	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		CartDto itemCart = new CartDto();
		ProductsDto product = productdao.FindProductByID(id);
		if (product != null && cart.containsKey(id)) {				
			itemCart = cart.get(id);
			itemCart.setQuantity(itemCart.getQuantity()+1);	
			itemCart.setQuantity_adult(itemCart.getQuantity_adult()+1);	
			itemCart.setQuantity_children(itemCart.getQuantity_children()+1);	
			itemCart.setQuantity_child(itemCart.getQuantity_child()+1);	
			itemCart.setQuantity_infant(itemCart.getQuantity_infant()+1);	
			itemCart.setTotalPrice((itemCart.getQuantity()* itemCart.getProduct().getPrice_net())+(itemCart.getQuantity_adult()* itemCart.getProduct().getPrice_adult())+(itemCart.getQuantity_children()* itemCart.getProduct().getPrice_children())+(itemCart.getQuantity_child()* itemCart.getProduct().getPrice_child())+(itemCart.getQuantity_infant()* itemCart.getProduct().getPrice_infant()));
		}else {
			//sp khac null  
			itemCart.setProduct(product);
			itemCart.setQuantity(1);
			itemCart.setTotalPrice(product.getPrice_net());
		}
		cart.put(id, itemCart);
		return cart;
	}

	// Edit gio hang
	public HashMap<Long, CartDto> EditCart(long id, int quantity,int quantity_adult,int quantity_children,int quantity_child, int quantity_infant, HashMap<Long, CartDto> cart) {
		if(cart==null) {
			return cart;
		}
		CartDto itemCart = new CartDto();
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuantity(quantity);
			itemCart.setQuantity_adult(quantity_adult);
			itemCart.setQuantity_children(quantity_children);
			itemCart.setQuantity_child(quantity_child);
			itemCart.setQuantity_infant(quantity_infant);
			double totalPrice = (quantity * itemCart.getProduct().getPrice_net())+(quantity_adult * itemCart.getProduct().getPrice_adult())+(quantity_children * itemCart.getProduct().getPrice_children())+(quantity_child * itemCart.getProduct().getPrice_child())+(quantity_infant * itemCart.getProduct().getPrice_infant());
			itemCart.setTotalPrice(totalPrice);
		}
		cart.put(id, itemCart);
		return cart;
	}

	// Delete gio hang
	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart) {
		if(cart==null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);		
		}
		return cart;
	}
	// tong so luong san pham
		public int TotalQuantity(HashMap<Long, CartDto> cart) {
			int totalQuantity = 0;
			for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
				totalQuantity += itemCart.getValue().getQuantity();
			}
			return totalQuantity;
		}
		// tong so luong người lớn
		public int TotalQuantity_adult(HashMap<Long, CartDto> cart) {
			int totalQuantity_adult = 0;
			for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
				totalQuantity_adult += itemCart.getValue().getQuantity_adult();
			}
			return totalQuantity_adult;
		}
		// tong so luong tre em
		public int TotalQuantity_children(HashMap<Long, CartDto> cart) {
			int totalQuantity_children = 0;
			for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
				totalQuantity_children += itemCart.getValue().getQuantity_children();
			}
			return totalQuantity_children;
		}
		// tong so luong tre nho
		public int TotalQuantity_child(HashMap<Long, CartDto> cart) {
			int totalQuantity_child = 0;
			for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
				totalQuantity_child += itemCart.getValue().getQuantity_child();
			}
			return totalQuantity_child;
		}
		// tong so luong so sinh
		public int TotalQuantity_infant(HashMap<Long, CartDto> cart) {
			int totalQuantity_infant = 0;
			for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
				totalQuantity_infant += itemCart.getValue().getQuantity_infant();
			}
			return totalQuantity_infant;
		}
		// tong gia san pham
	public double TotalPrice(HashMap<Long, CartDto> cart) {
		double totalPrice = 0;
		for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}
		return totalPrice;
	}
}
