package Traversal.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BlogMapper implements RowMapper<Blog>{
	public Blog mapRow(ResultSet rs, int rowNum) throws SQLException {
		Blog blog = new Blog();
		blog.setId(rs.getInt("id"));
		blog.setName(rs.getString("name"));
		blog.setTitle(rs.getString("title"));
		blog.setDescription(rs.getString("description"));
		blog.setDetail(rs.getString("detail"));
		blog.setImages(rs.getString("images"));
		blog.setCreate_by(rs.getString("create_by"));
		blog.setCreate_at(rs.getDate("create_at"));
		blog.setComment(rs.getString("comment"));
		blog.setStatus(rs.getInt("status"));
		return blog;
	}
}
