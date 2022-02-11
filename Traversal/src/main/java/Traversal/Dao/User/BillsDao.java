package Traversal.Dao.User;

import java.util.List;

import org.springframework.stereotype.Repository;

import Traversal.Dto.ProductsDto;
import Traversal.Dto.ProductsDtoMapper;
import Traversal.Entity.BillDetail;
import Traversal.Entity.Bills;
import Traversal.Entity.BillsMapper;

@Repository
public class BillsDao extends BaseDao{
	public int AddBills(Bills bill) {
		StringBuffer sql = new StringBuffer();			
		sql.append("insert into bills ");
		sql.append("( ");
		sql.append("users, phone, display_name, address, total, quantity, note, status, id_users ");
		sql.append(") ");
		sql.append("values ");
		sql.append("( ");
		sql.append("'"+bill.getUsers()+"', ");
		sql.append("'"+bill.getPhone()+"', ");
		sql.append("'"+bill.getDisplay_name()+"', ");
		sql.append("'"+bill.getAddress()+"', ");
		sql.append("'"+bill.getTotal()+"', ");
		sql.append("'"+bill.getQuantity()+"', ");
		sql.append("'"+bill.getNote()+"', ");
		sql.append("'"+'0'+"', ");
		sql.append("'"+bill.getId_users()+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	public long GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {},long.class);
		return id;
	}
	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("    id_product, ");
		sql.append("    id_bills, ");
		sql.append("    quantity, ");
		sql.append("    total ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append(" '"+billDetail.getId_product()+"', ");
		sql.append(" '"+billDetail.getId_bills()+"', ");
		sql.append(" '"+billDetail.getQuantity()+"', ");
		sql.append(" '"+billDetail.getTotal()+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public List<Bills> GetBillByID(long id) {
		String sql = SqlBillByID(id);
		List<Bills> listBill = _jdbcTemplate.query(sql, new BillsMapper());
		return listBill;
	}
	private String SqlBillByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("where 1=1");
		sql.append("and id_users=" + id + "");
		return sql.toString();
	}
	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("select * from bills ");
		return sql;
	}
}
