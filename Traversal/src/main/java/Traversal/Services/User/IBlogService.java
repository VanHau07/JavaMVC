package Traversal.Services.User;

import java.util.List;

import org.springframework.stereotype.Service;

import Traversal.Entity.Blog;

@Service
public interface IBlogService {
	public List<Blog> GetDataBlog();
	public Blog GetBlogByID(long id);
}
