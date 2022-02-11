package Traversal.Dao.Admin;

import org.springframework.stereotype.Repository;

import Traversal.Entity.MapperUsers;
import Traversal.Entity.Users;

@Repository
public class UsersAdminDao extends BaseAdminDao {
	//check account
	
	public Users GetUserByAcc(Users user) {
		String sql = "SELECT * FROM user_account WHERE users ='"+user.getUsers()+"'";
		Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());		
		return result;
	}	

}
