package models;

import java.util.Date;
import javax.persistence.Entity;
import play.db.jpa.Model;

/**
 * 实体:任职表
 * @author fz
 * @createDate 2016年12月1日 上午11:23:57
 */
@Entity
public class t_serve_staff extends Model {
	/** 员工id**/
	public int person_id;
	
	/** 部门id **/
	public int dept_id;
	
	/** 定员类别**/
	public String fixed_type;
	
	/** 岗位id**/
	public int position_id;
	
	/** 创建时间**/
	public Date rec_create_time;

	/** 创建人**/
	public String rec_create_user;
	
	/** 修改时间**/
	public Date rec_update_time;
	
	/** 修改人**/
	public String rec_update_user;
	
	/** 备注**/
	public String remark;
	
	/** 在职状态**/
	public int status;
	
	/** 员工类型**/
	public int employee_type;
	
	/** 工号**/
	public String staff_id;
	
	/** 有效标志**/
	public boolean alive_flag;	
	
}
