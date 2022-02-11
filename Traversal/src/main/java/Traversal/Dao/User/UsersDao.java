package Traversal.Dao.User;

import org.springframework.stereotype.Repository;

import Traversal.Entity.MapperUsers;
import Traversal.Entity.Users;

@Repository
public class UsersDao extends BaseDao {
	public int AddAccount(Users user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("Insert ");
		sql.append("INTO user_account ");
		sql.append("( ");
		sql.append("	users, ");
		sql.append("	password, ");
		sql.append("	display_name, ");
		sql.append("	address, ");
		sql.append("	status ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'"+user.getUsers()+"', ");
		sql.append("	'"+user.getPassword()+"', ");
		sql.append("	'"+user.getDisplay_name()+"', ");
		sql.append("	'"+user.getAddress()+"', ");
		sql.append("	'"+0+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public Users GetUserByAcc(Users user) {
		String sql = "SELECT * FROM user_account WHERE users ='"+user.getUsers()+"'";
		Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());		
		return result;
	}


}
