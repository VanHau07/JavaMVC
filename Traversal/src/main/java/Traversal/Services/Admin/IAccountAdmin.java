package Traversal.Services.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Entity.BillDetail;
import Traversal.Entity.Users;

@Service
public interface IAccountAdmin {
@Autowired
public Users CheckAccount_Admin(Users user);


}
