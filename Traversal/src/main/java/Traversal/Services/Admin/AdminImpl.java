package Traversal.Services.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Traversal.Dao.Admin.OrderDao_Admin;
import Traversal.Dao.Admin.ProductDao_Admin;
import Traversal.Entity.BillDetail;
import Traversal.Entity.Bills;
import Traversal.Entity.Products;

@Service
@Transactional
public class AdminImpl implements IAdmin {
	@Autowired
	ProductDao_Admin productdaoAdmin = new ProductDao_Admin();
	@Autowired
	OrderDao_Admin orderDao_Admin = new OrderDao_Admin();

	public List<Products> GetDataProduct() {

		return productdaoAdmin.GetDataProduct();
	}

	// take list from product
	public List<Products> listProduct() {

		return productdaoAdmin.listProduct();
	}

	public int AddProducts(Products pro) {

		return productdaoAdmin.AddProducts(pro);
	}

	public int delete(Products pro) {
		return productdaoAdmin.delete(pro);
	}

	public Products detail(int id) {
		return productdaoAdmin.detail(id);
	}

	public int update(Products pro) {
		return productdaoAdmin.update(pro);
	}

	public List<Products> findAll() {

		return productdaoAdmin.findAll();
	}

	public List<Bills> GetDataBill() {

		return orderDao_Admin.GetDataBill();
	}
//
//	public BillDetail detail_order(int id) {
//		return orderDao_Admin.detail_order(id);
//	}
//
//

	public List<BillDetail> detail_order(long id) {
		List<BillDetail> listBill = orderDao_Admin.GetOrderByID(id);
		return listBill;
	}

	public List<Bills> GetDetail_bill(int id) {
		List<Bills> listBill = orderDao_Admin.GetDetail_bill(id);
		return listBill;
	}
	public List<Bills> detail_bill(int id) {
		List<Bills> listBill = orderDao_Admin.GeBillByID(id);
		return listBill;
	}

	public Bills detail_bill_order(int id) {
		return orderDao_Admin.detail_bill_order(id);
	}

	public int update_bill(Bills bill) {
		return orderDao_Admin.update_bill(bill);
		
	}

	public int listProducts(Products pro) {
		return productdaoAdmin.listProducts(pro);
	}

	public List<Products> CountProducts() {
		return productdaoAdmin.CountProducts();
	}

}
