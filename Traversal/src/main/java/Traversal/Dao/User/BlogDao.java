package Traversal.Dao.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import Traversal.Entity.Blog;
import Traversal.Entity.BlogMapper;
@Repository
public class BlogDao extends BaseDao{

	public List<Blog> GetDataBlog() {
		List<Blog> list = new ArrayList<Blog>();
		String sql = "select * from blog";
		list = _jdbcTemplate.query(sql, new BlogMapper());
		return list;
	}

	public List<Blog> GetBlogByID(long id) {
		String sql = SqlBlogByID(id);
		List<Blog> listBlog = _jdbcTemplate.query(sql, new BlogMapper());
		return listBlog;
	}

	private String SqlBlogByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("where 1=1");
		sql.append("and id=" + id + "");
		return sql.toString();
	}

	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("select * from blog ");
		return sql;
	}
}
