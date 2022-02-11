package Traversal.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Traversal.Services.User.BlogServiceImpl;

@Controller
public class BlogController extends BaseController{
	@Autowired
	BlogServiceImpl blogService;
	@RequestMapping(value = { "/blog"})
	public ModelAndView Index() {
		_mvShare.addObject("blog", blogService.GetDataBlog());
		_mvShare.setViewName("user/blog/blog");
		return _mvShare;
	}
	@RequestMapping(value = { "/bai-viet/{id}"})
	public ModelAndView Blog_Detail(@PathVariable long id) {
		_mvShare.setViewName("user/blog/detail_blog");
		_mvShare.addObject("detail_blog", blogService.GetBlogByID(id));
		_mvShare.addObject("blog", blogService.GetDataBlog());
		return _mvShare;
	}
}
