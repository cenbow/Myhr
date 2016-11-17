package business;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import models.t_personal_info;
import play.Logger;
import utils.ErrorInfo;

/**
 * 用户的业务实体
 * @author fz
 * @createDate 2016年11月17日 下午2:24:58
 */
public class Employee implements Serializable
{

	/**
	 * 根据不同位置查询广告条
	 * 
	 * @param location
	 * @param error
	 * @return
	 */
	public static List<t_personal_info> queryEmployees(ErrorInfo error) {
		error.clear();
//		String sql = "select new t_content_advertisements(id, image_filename, url, is_link_enabled,"
//				+ " target) from t_content_advertisements where location = ? and is_use = true order by id";
		List<t_personal_info> emp = new ArrayList<t_personal_info>();

		try {
			emp = t_personal_info.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			Logger.info("人员信息查询时：" + e.getMessage());

			return null;
		}

		return emp;
	}


}
