package Traversal.Services.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dao.User.BlogDao;
import Traversal.Entity.Blog;

@Service
public class BlogServiceImpl implements IBlogService{
	@Autowired
	private BlogDao blogDao;
	public List<Blog> GetDataBlog() {
		return blogDao.GetDataBlog();
	}
	public Blog GetBlogByID(long id) {
		List<Blog> listBlog = blogDao.GetBlogByID(id);
		return listBlog.get(0);
	}

}
