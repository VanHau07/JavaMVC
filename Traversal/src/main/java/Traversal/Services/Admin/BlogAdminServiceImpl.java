package Traversal.Services.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dao.Admin.BlogDao_Admin;
import Traversal.Entity.Blog;

@Service
public class BlogAdminServiceImpl implements IBlogAdmin{
	@Autowired
	BlogDao_Admin blogdaoAdmin = new BlogDao_Admin();

	public int AddBlog(Blog blog) {
		
		return blogdaoAdmin.AddBlog(blog);
	}

	public List<Blog> listBlog() {
		return blogdaoAdmin.listBlog();
	}

	public Blog detail_blog(int id) {
		return blogdaoAdmin.detail_blog(id);
	}

	public int delete_blog(Blog blog) {
		return blogdaoAdmin.delete_blog(blog);
	}

	public int update_blog(Blog blog) {
		return blogdaoAdmin.update_blog(blog);
	}

	public List<Blog> GetDataBlog() {
		return blogdaoAdmin.GetDataBlog();
	}
	

}
