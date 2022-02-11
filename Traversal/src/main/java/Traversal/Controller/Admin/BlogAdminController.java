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

import Traversal.Entity.Blog;
import Traversal.Services.Admin.BlogAdminServiceImpl;


@Controller
public class BlogAdminController extends BaseAdminController{
	@Autowired
	BlogAdminServiceImpl blogAdminService;
	@Autowired
	ServletContext app;
	@Bean(name = "multipartResolver")
    public CommonsMultipartResolver createMultipartResolver() {
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setDefaultEncoding("utf-8");
        resolver.setMaxInMemorySize(0);
        return resolver;
    }
	@RequestMapping(value = "/admin_add_blog", method = RequestMethod.GET)
	public ModelAndView AddBlog() {
		_mvShare.setViewName("admin/add/add_blog");
		_mvShare.addObject("add", new Blog());
		return _mvShare;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd")

	@RequestMapping(value = "/admin_add_blog")
	public ModelAndView CreateAcc(ModelMap model, @ModelAttribute("add") Blog blog,@RequestParam("image_file") MultipartFile file)throws IllegalStateException, IOException 
	{
		if (!file.isEmpty()) {
		blog.setImages(file.getOriginalFilename());
		String path = app.getRealPath("/resources/user/images/" + blog.getImages());
		file.transferTo(new File(path));
		}else {
			
		}
		blogAdminService.AddBlog(blog);
		_mvShare.setViewName("redirect:admin_blog");
		model.addAttribute("message", "Thêm mới thành công");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_blog/{id}", method = RequestMethod.GET)
	public ModelAndView DetailBlog(@PathVariable int id, Model model) {
		Blog blog = blogAdminService.detail_blog(id);
		model.addAttribute("detail", blog);
		_mvShare.setViewName("admin/detail/detail_blog");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_update_blog/{id}", method = RequestMethod.GET)
	public ModelAndView UpdateBlog(@PathVariable int id, Model model) {
		Blog blog = blogAdminService.detail_blog(id);
		model.addAttribute("detail", blog);
		_mvShare.setViewName("admin/edit/edit_blog");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_update_blog/detail_update_blog")
	public ModelAndView doUpdateCustomer(ModelMap model, @ModelAttribute("detail") Blog blog,
			@RequestParam("image_file") MultipartFile file) throws IllegalStateException, IOException {
		if (!file.isEmpty()) {
			blog.setImages(file.getOriginalFilename());
			String path = app.getRealPath("/resources/user/images/" + blog.getImages());
			file.transferTo(new File(path));
		}
		blogAdminService.update_blog(blog);
		model.addAttribute("message", "Cập nhật thành công!");
		_mvShare.setViewName("redirect:../admin_blog");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_delete_blog/{id}", method = RequestMethod.GET)
	public ModelAndView DeleteBlog(@PathVariable("id") int id, ModelMap model) {
		Blog blog = blogAdminService.detail_blog(id);
		model.addAttribute("detail", blog);
		_mvShare.setViewName("admin/delete/delete_blog");
		return _mvShare;
	}

	@RequestMapping(value = "/detail_delete_blog/detail_delete_blog", method = RequestMethod.POST)
	public ModelAndView DeleteBlog(@ModelAttribute("detail") Blog blog, ModelMap model) {
		blogAdminService.delete_blog(blog);
		model.put("blog", new Blog());
		model.put("blog_admin", blogAdminService.listBlog());
		model.addAttribute("message", "Đã xóa thành công!");
		_mvShare.setViewName("redirect:../admin_blog");
		return _mvShare;
	}
}
