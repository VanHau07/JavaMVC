package Traversal.Services.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Entity.Menu;
import Traversal.Entity.Products;
@Service
public interface IHomeService {
	@Autowired
	public List<Products> GetDataProduct();
	public List<Menu> GetDataMenus();
	public List<Products> search(Products pro_search);
}
