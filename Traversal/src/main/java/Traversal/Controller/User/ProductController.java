package Traversal.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Traversal.Entity.Products;
import Traversal.Services.User.IProductService;
@Controller
public class ProductController extends BaseController{
	@Autowired
	private IProductService _productservice;
	@RequestMapping(value = {"chi-tiet-san-pham/{id}"})
	public ModelAndView Index(@PathVariable long id) {		
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("detail", _productservice.GetProductsByID(id));
		long idCetagory = _productservice.GetProductsByID(id).getId_category();
		_mvShare.addObject("Relate", _productservice.GetProductsByIDCategory(idCetagory));
		return _mvShare;
	}
	@RequestMapping(value = {"search"}, method=RequestMethod.POST)
	public ModelAndView Search(Model model, Products pro) {
		_mvShare.setViewName("user/account/search");
		_mvShare.addObject("search", _productservice.search(pro));
		return _mvShare;
	}
	
	@RequestMapping(value = {"search_slider"}, method=RequestMethod.POST)
	public ModelAndView Search_slider(Model model, Products pros) {
		_mvShare.setViewName("user/account/search");
		_mvShare.addObject("search", _productservice.search_slider(pros));
		return _mvShare;
	}
}
