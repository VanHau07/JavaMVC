package Traversal.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Traversal.Entity.Bills;
import Traversal.Entity.Products;

@Controller
public class OrderController extends BaseAdminController {

	@Autowired
	@RequestMapping(value = { "/admin_bill" })
	public ModelAndView Bill_() {
		_mvShare.addObject("bill_admin", adminImpl.GetDataBill());
		_mvShare.setViewName("admin/orders/orders");
		return _mvShare;
	}
//update bill
	
	 @RequestMapping(value = "/detail_bill/{id}", method = RequestMethod.GET)
	 public ModelAndView BillDetail(@PathVariable int id, Model model) {
		 Bills bill = adminImpl.detail_bill_order(id);
			model.addAttribute("bill_update", bill);
	  _mvShare.setViewName("admin/orders/bill_detail");
	  return _mvShare;  
	 }
	 @RequestMapping(value = "/detail_bill/detail_bill", method = RequestMethod.POST)
		public ModelAndView UpdateBill(@ModelAttribute("bill_update") Bills bill, ModelMap model) {
			adminImpl.update_bill(bill);
			model.put("bill", new Bills());
			model.put("bill_admin", adminImpl.GetDataBill());
			model.addAttribute("message", "Đã câp nhật thành công!");
			_mvShare.setViewName("redirect:../admin_bill");
			return _mvShare;
		}
	 
	//update bill
	@RequestMapping(value = "/detail_order_detail/{id}")
	public ModelAndView OrderDetail(@PathVariable("id") int id) {
		_mvShare.addObject("order_detail", adminImpl.detail_order(id));
		_mvShare.setViewName("admin/orders/order_detail");
		return _mvShare;
	}
}
