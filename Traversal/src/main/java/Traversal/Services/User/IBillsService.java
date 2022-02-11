package Traversal.Services.User;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Traversal.Dto.CartDto;
import Traversal.Entity.Bills;

@Service
public interface IBillsService {
@Autowired
public int AddBills(Bills bill);
public void AddBillsDetail(HashMap<Long, CartDto> carts);
public List<Bills> GetBillByID(long id);
}
