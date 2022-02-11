package Traversal.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
	
	@RequestMapping(value = { "/", "/trang-chu", "/trang chu", "/home" })
	public ModelAndView Index() {
		_mvShare.addObject("product", _homeservice.GetDataProduct());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
}
