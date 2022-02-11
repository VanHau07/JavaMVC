package Traversal.Services.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dao.User.MenuDao;
import Traversal.Dao.User.ProductDao;
import Traversal.Entity.Menu;
import Traversal.Entity.Products;
@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private ProductDao productdao;
	@Autowired
	private MenuDao menudao;

	public List<Products> GetDataProduct() {
		
	return productdao.GetDataProduct();
	}
	public List<Menu> GetDataMenus() {
		
		return menudao.GetDataMenus();
		}
	public List<Products> search(Products pro_search) {
		return productdao.search(pro_search);

	}
}
