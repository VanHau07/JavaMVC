package Traversal.Dao.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Traversal.Entity.BillDetail;
import Traversal.Entity.BillDetailMapper;
import Traversal.Entity.Bills;
import Traversal.Entity.BillsMapper;
import Traversal.Entity.MapperProducts;
@Repository
@Transactional
public class OrderDao_Admin extends BaseAdminDao{

	public List<Bills> GetDataBill() {
		List<Bills> list = new ArrayList<Bills>();
		String sql = "select * from bills";
		list = _jdbcTemplate.query(sql, new BillsMapper());
		return list;
	};
	
	// chi tiết order của product trong admin
	public List<BillDetail> detail_order(int id) {
		String sql = "select * from billdetail where id_bills= ?";
		return (List<BillDetail>) _jdbcTemplate.queryForObject(sql, new BillDetailMapper(), id);
	}

	
	/* <chi tiết hóa đơn theo id> */
	public List<BillDetail> GetOrderByID(long id) {
		String sql = SqlProductByID(id);
		List<BillDetail> listBill = _jdbcTemplate.query(sql, new BillDetailMapper());
		return listBill;
	}
	private String SqlProductByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("where 1=1");
		sql.append("and id_bills=" + id + "");
		return sql.toString();
	}
	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("select * from billdetail ");
		return sql;
	}

	/* <> */
	/* <cập nhật hóa đơn theo id> */
	public List<Bills> GeBillByID(int id) {
		String sql = SqlBillByID(id);
		List<Bills> listBill = _jdbcTemplate.query(sql, new BillsMapper());
		return listBill;
	}

	private String SqlBillByID(int id) {
		StringBuffer sql = SqlBillString();
		sql.append("where 1=1");
		sql.append(" and id=" + id + "");
		return sql.toString();
	}
	private StringBuffer SqlBillString() {
		StringBuffer sql = new StringBuffer();
		sql.append("update bills set status = ? ");
		return sql;
	}
	
	/* <> */
	
	/* <chi tiết đơn hàng theo id> */
	public List<Bills> GetDetail_bill(int id) {
		String sql = SqlBillDetailByID(id);
		List<Bills> listBill = _jdbcTemplate.query(sql, new BillsMapper());
		return listBill;
	}
	private String SqlBillDetailByID(int id) {
		StringBuffer sql = SqlBillDetailString();
		sql.append("where 1=1");
		sql.append(" and id=" + id + "");
		return sql.toString();
	}
	private StringBuffer SqlBillDetailString() {
		StringBuffer sql = new StringBuffer();
		sql.append("select * from bills ");
		return sql;
	}
	/* <> */

	public Bills detail_bill_order(int id) {
		String sql = "select * from bills where id= ?";
		return _jdbcTemplate.queryForObject(sql, new BillsMapper(), id);
	}

	public int update_bill(Bills bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("update bills ");
		sql.append("set ");	
		sql.append("status ='"+bill.getStatus()+"'  ");
		sql.append("WHERE id = '"+bill.getId()+"' ");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}

