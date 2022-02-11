package Traversal.Services.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Entity.BillDetail;
import Traversal.Entity.Bills;
import Traversal.Entity.Products;

@Service
public interface IAdmin {
	@Autowired
	public List<Products> GetDataProduct();

	/* public List<ProductsDto> GetDataProductsPaginate(int start, int end); */
	public int AddProducts(Products pro);
	public List<Products> listProduct();
	public Products detail(int id);
	public int delete (Products pro);
//	public void update(Products pro);
	public int update(Products pro);
	public List<Bills> GetDataBill();
	public List<BillDetail> detail_order(long id);
	public List<Bills> GetDetail_bill(int id);
	public int listProducts(Products pro);
	List<Products> CountProducts();

}
