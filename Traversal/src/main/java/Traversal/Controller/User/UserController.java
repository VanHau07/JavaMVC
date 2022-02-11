package Traversal.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Traversal.Entity.Users;
import Traversal.Services.User.AccountServiceImpl;

@Controller
public class UserController extends BaseController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView Dangky() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		if (user.getDisplay_name().equals("")) {
			_mvShare.addObject("status", "vui lòng nhập tên");
		} else if (user.getUsers().equals("")) {
			_mvShare.addObject("status", "Vui lòng nhập tên và email");
		} else if (user.getPassword().equals("")) {
			_mvShare.addObject("status", "vui lòng nhập mật khẩu tên và email");
		} else {
			try {
				int count = accountService.AddAccount(user);
				if (count > 0) {
					_mvShare.addObject("status", "Đăng ký thành công");
					_mvShare.setViewName("redirect:dang-nhap");
				} else {
					_mvShare.addObject("status", "Đăng ký thất bại");
				}
				_mvShare.setViewName("user/account/login");
			} catch (Exception e) {
				System.out.println(e);
			}
		}

		return _mvShare;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView Login() {
		_mvShare.setViewName("user/account/login");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	@RequestMapping(value = "dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users user) {
		if (user.getUsers().equals("")) {
			_mvShare.addObject("statusLogin", "vui lòng nhập tên");
		} else if (user.getPassword().equals("")) {
			_mvShare.addObject("statusLogin", "vui lòng nhập mật khẩu và email");
		} 
		else {
			try {
				user = accountService.CheckAccount(user);
				if (user != null) {
					_mvShare.setViewName("redirect:trang-chu");
					session.setAttribute("LoginInfo", user);
				} else {
					_mvShare.addObject("statusLogin", "Đăng nhập thất bại, sai tên hoặc sai mật khẩu rồi!!!");
				}
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		return _mvShare;
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String Login(HttpSession session, HttpServletRequest request) {

		session.removeAttribute("LoginInfo");
		return "redirect:" + request.getHeader("Referer");
	}
	
}
