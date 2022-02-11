package Traversal.Dao.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import Traversal.Dto.ProductsDto;
import Traversal.Dto.ProductsDtoMapper;
import Traversal.Entity.MapperProducts;
import Traversal.Entity.Products;

@Repository
public class ProductDao extends BaseDao {

	// lay danh sach product
	public List<Products> GetDataProduct() {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from Products where hot_deal=true and cover=true";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		return list;
	}

	// cau lenh lay du lieu bang product

	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("select * from products ");
		return sql;
	}

	// lấy id của chi tiết sản phẩm
	private String SqlProductByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("where 1=1");
		sql.append("and id=" + id + "");
		return sql.toString();
	}

	// lấy tất cả id liên quan chi tiết sản phẩm
	private StringBuffer SqlProductsByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("where 1=1");
		sql.append("and id_category=" + id + "");
		return sql;
	}

	// show id chi tiet
	public List<ProductsDto> GetProductsByID(long id) {
		String sql = SqlProductByID(id);
		List<ProductsDto> listProduct = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProduct;
	}

	// tim id chi tiet
	public ProductsDto FindProductByID(long id) {
		String sql = SqlProductByID(id);
		ProductsDto listProduct = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return listProduct;
	}

//show cac id_category tu SqlProductsByID
	public List<ProductsDto> getAllProductsById(long id) {
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> product = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return product;
	}

//search

	public List<Products> search(Products pro_search) {
		String sql = "select * from products where title ~* REPLACE ('"+ pro_search.getTitle()+ "',' ','')";

		List<Products> pro = _jdbcTemplate.query(sql, new MapperProducts());
		return pro;
	}

	public List<Products> search_slider(Products pro_slider) {
		String sql = "select * from products where title =  ('"+ pro_slider.getTitle()+ "')";
		List<Products> pro = _jdbcTemplate.query(sql, new MapperProducts());
		return pro;
	}
}