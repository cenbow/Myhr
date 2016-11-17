package controllers.companies.employees;

import java.util.List;

import business.Employee;
import controllers.BaseController;
import models.t_personal_info;
import utils.ErrorInfo;

public class HomeAction extends BaseController {
	public static void home()
	{
		ErrorInfo error = new ErrorInfo();
		List<t_personal_info> homeEmployee = Employee.queryEmployees(error); 
		render(homeEmployee);
	}
	
	public static void create()
	{
		ErrorInfo error = new ErrorInfo();
		List<t_personal_info> homeEmployee = Employee.queryEmployees(error); 
		render(homeEmployee);
	}
}
