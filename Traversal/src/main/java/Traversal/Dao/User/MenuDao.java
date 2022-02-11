package Traversal.Dao.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import Traversal.Entity.MapperMenus;
import Traversal.Entity.Menu;

@Repository
public class MenuDao extends BaseDao{
	public List<Menu> GetDataMenus(){
		List<Menu> list = new ArrayList<Menu>();
		String sql = "SELECT * FROM Menus";
		list = _jdbcTemplate.query(sql, new MapperMenus());
		return list;
	}
}
