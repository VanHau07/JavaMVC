package Traversal.Services.User;

import org.springframework.stereotype.Service;

import Traversal.Entity.Users;

@Service
public interface IAccountService {
	public int AddAccount(Users user);
	public Users CheckAccount(Users user);

}
