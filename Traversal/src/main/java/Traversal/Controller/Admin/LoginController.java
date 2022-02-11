package Traversal.Controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Traversal.Entity.Users;
import Traversal.Services.Admin.AccountAdminServiceImpl;
import Traversal.Services.Admin.BlogAdminServiceImpl;

@Controller
public class LoginController extends BaseAdminController {

	@Autowired
	AccountAdminServiceImpl accountAdminService = new AccountAdminServiceImpl();
	@Autowired
	BlogAdminServiceImpl blogserviceImpl;

	@RequestMapping(value = "/admin_home", method = RequestMethod.GET)
	public ModelAndView home(Users user, String username, String Pass, Model model) {
		username = user.getUsers();
		model.addAttribute("LoginInfo",username);
		_mvShare.setViewName("/admin/home");
		_mvShare.addObject("product_admin", adminImpl.GetDataProduct());
		_mvShare.addObject("blog_admin", blogserviceImpl.GetDataBlog());
		_mvShare.addObject("bill_admin", adminImpl.GetDataBill());
		return _mvShare;
	}

	/*
	 * @RequestMapping(value = "/admin_home", method = RequestMethod.GET) public
	 * String home(ModelMap model) { model.put("user", new Users()); return
	 * "admin/home"; }
	 */

	@RequestMapping(value = "/quan-tri", method = RequestMethod.GET)
	public String UserLogin(ModelMap model) {
		model.put("user", new Users());
		return "admin/login_admin";
	}

	@RequestMapping(value = "/quan-tri", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users user) {
		try {		
				user = accountAdminService.CheckAccount_Admin(user);
				if (user == null) {
					_mvShare.addObject("statusLogin", "Đăng nhập thất bại, sai tên hoặc sai mật khẩu rồi!!!");
				} else {
					session.setAttribute("LoginInfo", user);
					_mvShare.setViewName("redirect:admin_home");
				}
			
		} catch (Exception e) {
			System.err.println("Đăng nhập thất bại");
			e.printStackTrace();
		}

		return _mvShare;

	}

	@RequestMapping(value = "/thoat", method = RequestMethod.GET)
	public ModelAndView Login(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		_mvShare.setViewName("redirect:quan-tri");
		return _mvShare;
	}

	@RequestMapping(value = { "/admin_product" })
	public ModelAndView Index() {
		_mvShare.addObject("product_admin", adminImpl.GetDataProduct());
		_mvShare.setViewName("admin/Products");
		return _mvShare;
	}

	@RequestMapping(value = { "/admin_blog" })
	public ModelAndView Blog_Admin() {
		_mvShare.addObject("blog_admin", blogserviceImpl.GetDataBlog());
		_mvShare.setViewName("admin/Blog");
		return _mvShare;
	}
}
