package controllers.companies.employees;

import com.shove.Convert;

import business.Employee;
import constants.Constants;
import controllers.BaseController;
import models.v_staff;
import utils.ErrorInfo;
import utils.NumberUtil;
import utils.PageBean;

public class HomeAction extends BaseController {
	public static void home()
	{
		ErrorInfo error = new ErrorInfo();
		
        int currPage = Constants.ONE;
        int pageSize = Constants.TEN;

        String currPageStr = params.get("currPage");
        String pageSizeStr = params.get("pageSize");

        if (NumberUtil.isNumericInt(currPageStr))
        {
            currPage = Convert.strToInt(currPageStr, Constants.ONE);
        }

        if (NumberUtil.isNumericInt(pageSizeStr))
        {
            pageSize = Convert.strToInt(pageSizeStr, Constants.ONE);
        }
		
        PageBean<v_staff> pageBean = new PageBean<v_staff>();
        pageBean = Employee.queryEmployees(currPage, pageSize, error);
        
        render(pageBean);
	}
	
	public static void create()
	{
//		ErrorInfo error = new ErrorInfo();
//		List<t_personal_info> homeEmployee = Employee.queryEmployees(error); 
//		render(homeEmployee);
	}
}
