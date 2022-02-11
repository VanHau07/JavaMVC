package Traversal.Services.User;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dto.CartDto;

@Service
public interface ICartService {
	@Autowired
	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart);

	public HashMap<Long, CartDto> EditCart(long id, int quantity,int quantity_adult,int quantity_children,int quantity_child, int quantity_infant, HashMap<Long, CartDto> cart);

	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart);

	public int TotalQuantity(HashMap<Long, CartDto> cart);
	public int TotalQuantity_adult(HashMap<Long, CartDto> cart);
	public int TotalQuantity_children(HashMap<Long, CartDto> cart);
	public int TotalQuantity_child(HashMap<Long, CartDto> cart);
	public int TotalQuantity_infant(HashMap<Long, CartDto> cart);
	public double TotalPrice(HashMap<Long, CartDto> cart);
}
