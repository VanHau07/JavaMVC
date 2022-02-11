package Traversal.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.servlet.ModelAndView;

import Traversal.Services.Admin.AdminImpl;

public class BaseAdminController {
	
	@Autowired
	AdminImpl adminImpl;
	public ModelAndView _mvShare = new ModelAndView();
	@Autowired
	public JdbcTemplate _jdbcTemplate;
}
