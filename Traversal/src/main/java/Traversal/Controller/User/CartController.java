package Traversal.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Traversal.Dto.CartDto;
import Traversal.Entity.Bills;
import Traversal.Entity.Users;
import Traversal.Services.User.BillsServiceImpl;
import Traversal.Services.User.CartServiceImpl;

@Controller
public class CartController extends BaseController {
	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	@Autowired
	private BillsServiceImpl billsService = new BillsServiceImpl();

	@RequestMapping(value = "/gio-hang")
	public ModelAndView Index() {
		_mvShare.addObject("product", _homeservice.GetDataProduct());
		_mvShare.setViewName("user/cart/list_cart");
		return _mvShare;
	}

	@RequestMapping(value = "/AddCart/{id}")
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");

	}

	@RequestMapping(value = "/EditCart/{id}/{quantity}/{quantity_adult}/{quantity_children}/{quantity_child}/{quantity_infant}")

	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id,
			@PathVariable int quantity, @PathVariable int quantity_adult, @PathVariable int quantity_children,
			@PathVariable int quantity_child, @PathVariable int quantity_infant) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.EditCart(id, quantity, quantity_adult, quantity_children, quantity_child, quantity_infant,
				cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalQuantityAdultCart", cartService.TotalQuantity_adult(cart));
		session.setAttribute("TotalQuantityChildrenCart", cartService.TotalQuantity_children(cart));
		session.setAttribute("TotalQuantityChildCart", cartService.TotalQuantity_child(cart));
		session.setAttribute("TotalQuantityInfantCart", cartService.TotalQuantity_infant(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "checkout", method = RequestMethod.GET)
	public ModelAndView Checkout(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("user/bills/checkout");
		Bills bills = new Bills();
		Users loginInfo = (Users) session.getAttribute("LoginInfo");
		if (loginInfo != null) {
			bills.setId_users((int) loginInfo.getId());
			bills.setAddress(loginInfo.getAddress());
			bills.setDisplay_name(loginInfo.getDisplay_name());
			bills.setUsers(loginInfo.getUsers());
		}else {
			_mvShare.setViewName("redirect:../dang-nhap");
			_mvShare.setViewName("redirect:dang-nhap");
		}
		_mvShare.addObject("bills", bills);
		return _mvShare;
	}
	@RequestMapping(value = "checkout", method = RequestMethod.POST)
	public String CheckoutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bills") Bills bill) {
		if (bill.getUsers().equals("")) {
			_mvShare.addObject("statusLogin", "vui lòng đăng nhập để thanh toán");
		} else if (bill.getDisplay_name().equals("")) {
			_mvShare.addObject("statusLogin", "vui lòng đăng nhập để thanh toán");
		} else if (bill.getPhone().equals("")) {
			_mvShare.addObject("statusLogin", "vui lòng nhập số điện thoại để được liên hệ");
		} else if (bill.getAddress().equals("")) {
			_mvShare.addObject("statusLogin", "vui lòng nhập địa chỉ để được đưa đón");
		} else {
			try {
//				bill.setQuantity(Integer.parseInt((String) session.getAttribute("TotalQuantityCart")));
				Integer totalQuantityCart = Integer.valueOf(session.getAttribute("TotalQuantityCart").toString());
				bill.setQuantity(totalQuantityCart);
				double totalPriceCart = Double.valueOf(session.getAttribute("TotalPriceCart").toString());
				bill.setTotal(totalPriceCart);
//				bill.setTotal(Double.parseDouble((String) session.getAttribute("TotalPriceCart")));													
					if (billsService.AddBills(bill) > 0) {
						HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>) session.getAttribute("Cart");
						billsService.AddBillsDetail(carts);
						session.removeAttribute("Cart");
						session.removeAttribute("TotalQuantityCart");
						session.removeAttribute("TotalPriceCart");
						return "redirect:payment";
					}
				}
			 catch (Exception e) {
				System.out.println(e);
			}
		}

		return "redirect:" + request.getHeader("Referer");
	}
	@RequestMapping(value = "payment", method = RequestMethod.GET)
	public ModelAndView Payment(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("user/bills/payment");		
		Bills bills = new Bills();
		Users loginInfo = (Users) session.getAttribute("LoginInfo");
		bills.setId(loginInfo.getId());
		bills.setAddress(loginInfo.getAddress());
		bills.setDisplay_name(loginInfo.getDisplay_name());
		bills.setUsers(loginInfo.getUsers());
		_mvShare.addObject("bill_detail", bills);
		return _mvShare;
	}
	@RequestMapping(value = "payment_detail/{id}", method = RequestMethod.GET)
	public ModelAndView Payment_Detail(@PathVariable long id, @ModelAttribute ("bill_detail") Bills bill) {
		_mvShare.setViewName("user/bills/payment_detail");		
		_mvShare.addObject("bill", billsService.GetBillByID(id));
		return _mvShare;
	}
}
