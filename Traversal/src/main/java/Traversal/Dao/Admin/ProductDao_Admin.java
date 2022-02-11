package Traversal.Dao.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Traversal.Entity.MapperProducts;
import Traversal.Entity.Products;

@Repository
@Transactional
public class ProductDao_Admin extends BaseAdminDao{
	// lay danh sach product
	public List<Products> GetDataProduct() {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from Products where hot_deal=true and cover=true";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		return list;
	}

	// thêm sảm phẩm admin
	public int AddProducts(Products pro) {
		StringBuffer sql = new StringBuffer();
		sql.append("insert into products ");
		sql.append("( ");
		sql.append(
				"title, description, price, price_net, available, sold, deal_timer, discount, image, cover, hot_deal, hot_new, hot_best, trend, latest_review, id_category, detail, infor, content, hot_hot, price_children, price_child, price_infant, schedule1, schedule2, schedule3, price_adult ");
		sql.append(") ");
		sql.append("values ");
		sql.append("( ");
		sql.append("'" + pro.getTitle() + "', ");
		sql.append("'" + pro.getDescription() + "', ");
		sql.append("'" + pro.getPrice() + "', ");
		sql.append("'" + pro.getPrice_net() + "', ");
		sql.append("'" + pro.getAvailable() + "', ");
		sql.append("'" + pro.getSold() + "', ");
		sql.append("'" + java.time.LocalDate.now() + "', ");
		sql.append("'" + pro.getDiscount() + "', ");
		sql.append("'" + pro.getImage() + "', ");
		sql.append("'" + "true" + "', ");
		sql.append("'" + "true" + "', ");
		sql.append("'" + pro.isHot_new() + "', ");
		sql.append("'" + pro.isHot_best() + "', ");
		sql.append("'" + pro.isTrend() + "', ");
		sql.append("'" + pro.isLatest_review() + "', ");
		sql.append("'" + pro.getId_category() + "', ");
		sql.append("'" + pro.getDetail() + "', ");
		sql.append("'" + pro.getInfor() + "', ");
		sql.append("'" + pro.getContent() + "', ");
		sql.append("'" + pro.isHot_hot() + "', ");
		sql.append("'" + pro.getPrice_children() + "', ");
		sql.append("'" + pro.getPrice_child() + "', ");
		sql.append("'" + pro.getPrice_infant() + "', ");
		sql.append("'" + pro.getSchedule1() + "', ");
		sql.append("'" + pro.getSchedule2() + "', ");
		sql.append("'" + pro.getSchedule3() + "', ");
		sql.append("'" + pro.getPrice_adult() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};

	public List<Products> listProduct() {
		String sql = "select * from Products";
		List<Products> pro = _jdbcTemplate.query(sql, new MapperProducts());
		return pro;
	}

	// chi tiết sảm phẩm của admin
	public Products detail(int id) {
		String sql = "select * from products where id= ?";
		return _jdbcTemplate.queryForObject(sql, new MapperProducts(), id);
	}

// Xóa sản phẩm từ admin
//	public void delete(int id) {
//		String sql = "delete from products where id= ?";
//		_jdbcTemplate.update(sql, id);
//		return;
//	}

	public int delete(Products pro) {
		StringBuffer sql = new StringBuffer();
		sql.append("delete from products ");
		sql.append("where ");
		sql.append("id ='"+pro.getId()+"' ");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public List<Products> findAll() {
		String sql = "SELECT * FROM products";
		return _jdbcTemplate.query(sql, new MapperProducts());
	}


	public int update(Products pro) {
		StringBuffer sql = new StringBuffer();
		sql.append("update products ");
		sql.append("set ");
		sql.append("id ='"+pro.getId()+"' , ");
		sql.append("title ='"+pro.getTitle()+"' , ");
		sql.append("description = '"+pro.getDescription()+"', ");
		sql.append("price = '"+pro.getPrice()+"', ");
		sql.append("price_net = '"+pro.getPrice_net()+"', ");
		sql.append("available = '"+pro.getAvailable()+"', ");
		sql.append("sold = '"+pro.getSold()+"', ");
		sql.append("deal_timer = '"+java.time.LocalDate.now() +"', ");
		sql.append("discount = '"+pro.getDiscount()+"', ");
		sql.append("image = '"+pro.getImage()+"', ");
		sql.append("hot_new = '"+pro.isHot_new()+"', ");
		sql.append("hot_best = '"+pro.isHot_best()+"', ");
		sql.append("trend = '"+pro.isTrend()+"', ");
		sql.append("latest_review = '"+pro.isLatest_review()+"', ");
		sql.append("id_category = '"+pro.getId_category()+"', ");
		sql.append("detail = '"+pro.getDetail()+"', ");
		sql.append("infor = '"+pro.getInfor()+"', ");
		sql.append("content = '"+pro.getContent()+"', ");
		sql.append("hot_hot = '"+pro.isHot_hot()+"', ");
		sql.append("price_children = '"+pro.getPrice_children()+"', ");
		sql.append("price_child = '"+pro.getPrice_child()+"', ");
		sql.append("price_infant = '"+pro.getPrice_infant()+"', ");
		sql.append("schedule1 = '"+pro.getSchedule1()+"', ");
		sql.append("schedule2 = '"+pro.getSchedule2()+"', ");
		sql.append("schedule3 = '"+pro.getSchedule3()+"', ");
		sql.append("price_adult = '"+pro.getPrice_adult()+"' ");
		sql.append("WHERE id = '"+pro.getId()+"' ");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public int listProducts(Products pro) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT COUNT(id) FROM products");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public List<Products> CountProducts() {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from products";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		return list;
	}
	
	

	
}
