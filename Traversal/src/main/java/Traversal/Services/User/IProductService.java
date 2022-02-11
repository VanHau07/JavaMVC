package Traversal.Services.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dto.ProductsDto;
import Traversal.Entity.Products;

@Service
public interface IProductService {
	@Autowired
	public ProductsDto GetProductsByID(long id);
	public List<ProductsDto> GetProductsByIDCategory(long id);
	public List<Products> search(Products pro_search);
//	public void search(Products pro ,String title);
////	//search
//	public List<Products> search(String title,  HashMap<Long, ProductsDto> search);
	public List<Products> search_slider(Products pro);

}