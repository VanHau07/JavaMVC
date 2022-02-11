package Traversal.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BillDetailMapper implements RowMapper<BillDetail> {
	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetail bill_detail = new BillDetail();
		bill_detail.setId(rs.getLong("id"));
		bill_detail.setId_product(rs.getLong("id_product"));
		bill_detail.setId_bills(rs.getLong("id_bills"));
		bill_detail.setQuantity(rs.getInt("quantity"));
		bill_detail.setTotal(rs.getDouble("total"));
		return bill_detail;
	}
}