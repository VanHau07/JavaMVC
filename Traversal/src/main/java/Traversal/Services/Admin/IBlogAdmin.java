package Traversal.Services.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import Traversal.Entity.Blog;

@Service
public interface IBlogAdmin {
	public List<Blog> GetDataBlog() ;
	public int AddBlog(Blog blog);
	public List<Blog> listBlog();
	public Blog detail_blog(int id);
	public int delete_blog (Blog blog);
	public int update_blog(Blog blog);
}
