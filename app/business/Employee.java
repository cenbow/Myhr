package business;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import models.v_staff;
import play.Logger;
import play.db.jpa.JPA;
import utils.ErrorInfo;
import utils.PageBean;
import utils.QueryUtil;

/**
 * 用户的业务实体
 * @author fz
 * @createDate 2016年11月17日 下午2:24:58
 */
public class Employee implements Serializable
{

	/**
	 * 查询首页员工
	 * 
	 * @param location
	 * @param error
	 * @return
	 */
	public static PageBean<v_staff> queryEmployees(int currPage, int pageSize,ErrorInfo error) {
		error.clear();
        List<v_staff> empList = new ArrayList<v_staff>();
        PageBean<v_staff> page = new PageBean<v_staff>();
        page.pageSize = pageSize;
        page.currPage = currPage;
        
        String sql = "select a.id,a.name,a.status,b.employee_type,b.position_id,b.dept_id,b.staff_id,a.join_date "
     		   + "from t_personal_info a left join t_serve_staff b on a.id = b.person_id where 1=1 ";
        
        //查询条件
        List<Object> params = new ArrayList<Object>();
//        params.add(userId);

        try
        {
            EntityManager em = JPA.em();
            Query query = em.createNativeQuery(sql.toString(), v_staff.class);
            for (int n = 1; n <= params.size(); n++)
            {
                query.setParameter(n, params.get(n - 1));
            }
            query.setFirstResult((currPage - 1) * pageSize);
            query.setMaxResults(pageSize);
            empList = query.getResultList();

            page.totalCount = QueryUtil.getQueryCountByCondition(em, sql.toString(), params);

        }
        catch (Exception e)
        {
            e.printStackTrace();
            Logger.info(e.getMessage());
            error.code = -1;

            return page;
        }
        error.code = 1;
        page.page = empList;

        return page;
	}


}
