package Traversal.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BillsMapper implements RowMapper<Bills> {
	public Bills mapRow(ResultSet rs, int rowNum) throws SQLException {
		Bills bills = new Bills();
		bills.setId(rs.getLong("id"));
		bills.setUsers(rs.getString("users"));
		bills.setPhone(rs.getString("phone"));
		bills.setDisplay_name(rs.getString("display_name"));
		bills.setAddress(rs.getString("address"));
		bills.setTotal(rs.getDouble("total"));
		bills.setQuantity(rs.getInt("quantity"));
		bills.setNote(rs.getString("note"));
		bills.setStatus(rs.getInt("status"));
		bills.setId_users(rs.getInt("id_users"));
		return bills;
	}
}
