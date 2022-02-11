package Traversal.Dao.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Traversal.Entity.Blog;
import Traversal.Entity.BlogMapper;

@Repository
@Transactional
public class BlogDao_Admin extends BaseAdminDao{

	public int AddBlog(Blog blog) {
		StringBuffer sql = new StringBuffer();
		sql.append("insert into blog ");
		sql.append("( ");
		sql.append(
				"Name, Title, Description, Detail, Images, Create_by, Create_at, Comment, Status ");
		sql.append(") ");
		sql.append("values ");
		sql.append("( ");
		sql.append("'" + blog.getName() + "', ");
		sql.append("'" + blog.getTitle() + "', ");
		sql.append("'" + blog.getDescription() + "', ");
		sql.append("'" + blog.getDetail() + "', ");
		sql.append("'" + blog.getImages() + "', ");
		sql.append("'" + blog.getCreate_by() + "', ");
		sql.append("'" + java.time.LocalDate.now() + "', ");
		sql.append("'" + blog.getComment() + "', ");
		sql.append("'" + blog.getStatus() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public List<Blog> listBlog() {
		String sql = "select * from blog";
		List<Blog> blog = _jdbcTemplate.query(sql, new BlogMapper());
		return blog;
	}

	public Blog detail_blog(int id) {
		String sql = "select * from blog where id= ?";
		return _jdbcTemplate.queryForObject(sql, new BlogMapper(), id);
	
	}

	public int delete_blog(Blog blog) {
		StringBuffer sql = new StringBuffer();
		sql.append("delete from blog ");
		sql.append("where ");
		sql.append("id ='"+blog.getId()+"' ");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public int update_blog(Blog blog) {
		StringBuffer sql = new StringBuffer();
		sql.append("update blog ");
		sql.append("set ");
		sql.append("Name ='"+blog.getName()+"' , ");
		sql.append("Title = '"+blog.getTitle()+"', ");
		sql.append("Description = '"+blog.getDescription()+"', ");
		sql.append("Detail = '"+blog.getDetail()+"', ");
		sql.append("Images = '"+blog.getImages()+"', ");
		sql.append("Create_by = '"+blog.getCreate_by()+"', ");
		sql.append("Create_at = '"+java.time.LocalDate.now() + "', ");
		sql.append("Comment = '"+blog.getComment()+"' ");
		sql.append("WHERE id = '"+blog.getId()+"' ");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public List<Blog> GetDataBlog() {
	List<Blog> list = new ArrayList<Blog>();
		String sql = "select * from blog";
		list = _jdbcTemplate.query(sql, new BlogMapper());
		return list;
	}

}
