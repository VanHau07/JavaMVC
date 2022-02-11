package Traversal.Services.Admin;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dao.Admin.UsersAdminDao;
import Traversal.Entity.Users;

@Service
public class AccountAdminServiceImpl implements IAccountAdmin {
	@Autowired
	UsersAdminDao usersDao = new UsersAdminDao();

// login of the admin
	public Users CheckAccount_Admin(Users user) {
		String pass = user.getPassword();
		user = usersDao.GetUserByAcc(user);
		int status = user.getStatus();
		if (status == 1) {
			if (BCrypt.checkpw(pass, user.getPassword())) {
				return user;
			} else {
				return null;
			}
		}
		return null;
	}
}