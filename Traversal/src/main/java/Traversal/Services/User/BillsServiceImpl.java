package Traversal.Services.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dao.User.BillsDao;
import Traversal.Dto.CartDto;
import Traversal.Dto.ProductsDto;
import Traversal.Entity.BillDetail;
import Traversal.Entity.Bills;

@Service
public class BillsServiceImpl implements IBillsService {
	@Autowired
	private BillsDao billsDao;

	public int AddBills(Bills bill) {

		return billsDao.AddBills(bill);
	}

	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		long idBills = billsDao.GetIDLastBills();
		for (Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId());
			billDetail.setQuantity((Integer)itemCart.getValue().getQuantity());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}

	}
	public List<Bills> GetBillByID(long id) {
		List<Bills> listBill = billsDao.GetBillByID(id);
		return listBill;
	}

}
