package Traversal.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;





public class ProductsDtoMapper implements RowMapper<ProductsDto>{

	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
	ProductsDto products = new ProductsDto();
	products.setId(rs.getInt("id"));
	products.setTitle(rs.getString("title"));
	products.setDescription(rs.getString("description"));
	products.setPrice(rs.getDouble("price"));
	products.setPrice_net(rs.getDouble("price_net"));
	products.setAvailable(rs.getInt("available"));
	products.setSold(rs.getInt("sold"));
	products.setDeal_timer(rs.getDate("deal_timer"));
	products.setDiscount(rs.getInt("discount"));
	products.setImage(rs.getString("image"));
	products.setCover(rs.getBoolean("cover"));
	products.setHot_deal(rs.getBoolean("hot_deal"));
	products.setHot_new(rs.getBoolean("hot_new"));
	products.setHot_best(rs.getBoolean("hot_best"));
	products.setTrend(rs.getBoolean("trend"));
	products.setLatest_review(rs.getBoolean("latest_review"));
	products.setId_category(rs.getInt("id_category"));
	products.setDetail(rs.getString("detail"));
	products.setInfor(rs.getString("infor"));
	products.setContent(rs.getString("content"));
	products.setHot_hot(rs.getBoolean("hot_hot"));
	products.setPrice_adult(rs.getDouble("price_adult"));
	products.setPrice_children(rs.getDouble("price_children"));
	products.setPrice_child(rs.getDouble("price_child"));
	products.setPrice_infant(rs.getInt("price_infant"));
	
	products.setSchedule1(rs.getString("schedule1"));
	products.setSchedule2(rs.getString("schedule2"));
	products.setSchedule3(rs.getString("schedule3"));
		return products;
	}

}
