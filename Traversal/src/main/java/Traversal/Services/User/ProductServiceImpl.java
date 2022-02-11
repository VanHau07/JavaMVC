package Traversal.Services.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dao.User.ProductDao;
import Traversal.Dto.ProductsDto;
import Traversal.Entity.Products;

@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	ProductDao productdao = new ProductDao();

	public ProductsDto GetProductsByID(long id) {
		List<ProductsDto> listProducts = productdao.GetProductsByID(id);
		return listProducts.get(0);
	}

	public List<ProductsDto> GetProductsByIDCategory(long id) {		
		List<ProductsDto> listProducts = productdao.getAllProductsById(id);
		return listProducts;
	}
	//search

	public List<Products> search(Products pro_search){
		return productdao.search(pro_search);
	}

	public List<Products> search_slider(Products pro_slider) {
		return productdao.search_slider(pro_slider);
	}


}
