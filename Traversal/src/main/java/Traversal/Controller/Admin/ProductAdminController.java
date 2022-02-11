package Traversal.Controller.Admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import Traversal.Entity.Products;

@Controller
public class ProductAdminController extends BaseAdminController {
	@Autowired
	ServletContext app;
	@Bean(name = "multipartResolver")
    public CommonsMultipartResolver createMultipartResolver() {
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setDefaultEncoding("utf-8");
        resolver.setMaxInMemorySize(0);
        return resolver;
    }
	@RequestMapping(value = "/admin_add_products", method = RequestMethod.GET)
	public ModelAndView AddProducts() {
		_mvShare.setViewName("admin/add/add_products");
		_mvShare.addObject("add", new Products());
		return _mvShare;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd")

	@RequestMapping(value = "/admin_add_products")
	public ModelAndView CreateAcc(ModelMap model, @ModelAttribute("add") Products pro,@RequestParam("image_file") MultipartFile file)throws IllegalStateException, IOException 
	{
		if (!file.isEmpty()) {
		pro.setImage(file.getOriginalFilename());
		String path = app.getRealPath("/resources/user/images/" + pro.getImage());
		file.transferTo(new File(path));
		}else {
			
		}
		adminImpl.AddProducts(pro);
		_mvShare.setViewName("redirect:admin_product");
		_mvShare.addObject("message", "Thêm mới thành công");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_product/{id}", method = RequestMethod.GET)
	public ModelAndView DetailProduct(@PathVariable int id, Model model) {
		Products pro = adminImpl.detail(id);
		model.addAttribute("detail", pro);
		_mvShare.setViewName("admin/detail/detail_product");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_update_product/{id}", method = RequestMethod.GET)
	public ModelAndView UpdateProduct(@PathVariable int id, Model model) {
		Products pro = adminImpl.detail(id);
		model.addAttribute("detail", pro);
		_mvShare.setViewName("admin/edit/edit_product");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_update_product/detail_update_product")
	public ModelAndView doUpdateCustomer(ModelMap model, @ModelAttribute("detail") Products pro,
			@RequestParam("image_file") MultipartFile file) throws IllegalStateException, IOException {
		if (!file.isEmpty()) {
			pro.setImage(file.getOriginalFilename());
			String path = app.getRealPath("/resources/user/images/" + pro.getImage());
			file.transferTo(new File(path));
		}
		adminImpl.update(pro);
		_mvShare.addObject("message", "Cập nhật thành công!");
		_mvShare.setViewName("redirect:../admin_product");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_delete_product/{id}", method = RequestMethod.GET)
	public ModelAndView DeleteProduct(@PathVariable("id") int id, ModelMap model) {
		Products pro = adminImpl.detail(id);
		model.addAttribute("detail", pro);
		_mvShare.setViewName("admin/delete/delete_product");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_delete_product/detail_delete_product", method = RequestMethod.POST)
	public ModelAndView DeleteProduct_(@ModelAttribute("detail") Products pro, ModelMap model) {
		adminImpl.delete(pro);
		model.put("pro", new Products());
		model.put("product_admin", adminImpl.listProduct());
		_mvShare.addObject("message", "Đã xóa thành công!");
		_mvShare.setViewName("redirect:../admin_product");
		return _mvShare;
	}
}
