package Traversal.Services.User;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dao.User.CartDao;
import Traversal.Dto.CartDto;

@Service
public class CartServiceImpl implements ICartService{
	@Autowired
	private CartDao cartDao = new CartDao();
	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		
		return cartDao.AddCart(id, cart);
	}

	public HashMap<Long, CartDto> EditCart(long id, int quantity,int quantity_adult,int quantity_children,int quantity_child, int quantity_infant, HashMap<Long, CartDto> cart) {
		
		return cartDao.EditCart(id, quantity,quantity_adult,quantity_children,quantity_child,quantity_infant, cart);
	}

	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart) {
		
		return cartDao.DeleteCart(id, cart);
	}

	public int TotalQuantity(HashMap<Long, CartDto> cart) {
		
		return cartDao.TotalQuantity(cart);
	}

	public double TotalPrice(HashMap<Long, CartDto> cart) {
		return cartDao.TotalPrice(cart);
	}
	public int TotalQuantity_adult(HashMap<Long, CartDto> cart) {
		
		return cartDao.TotalQuantity_adult(cart);
	}
	public int TotalQuantity_children(HashMap<Long, CartDto> cart) {
		
		return cartDao.TotalQuantity_children(cart);
	}

	public int TotalQuantity_child(HashMap<Long, CartDto> cart) {
		
		return cartDao.TotalQuantity_child(cart);
	}

	public int TotalQuantity_infant(HashMap<Long, CartDto> cart) {
		
		return cartDao.TotalQuantity_infant(cart);
	}

}
