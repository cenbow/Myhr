package models;

import java.util.Date;

import javax.persistence.Entity;

import play.db.jpa.Model;

/**
 * 实体:个人信息表
 * 
 * @author fz
 * @version 1.0
 * @created 2016-11-10
 */
@Entity
public class t_personal_info extends Model {
	/** 工号**/
	public String empno;
	
	/** 姓名 **/
	public String name;
	
	/** 昵称**/
	public String nickname;
	
	/** 性别**/
	public int sex;
	
	/** 生日**/
	public Date birthday;

	/** 农历生日**/
	public Date lunar_birthday;
	
	/** 年龄**/
	public int age;
	
	/** 学历**/
	public int degree;
	
	/** 婚姻状况**/
	public int marriage_in_human;
	
	/** 手机号码**/
	public int mobile;
	
	/** 邮箱**/
	public String email;
	
	/** 现住址**/
	public String address;
	
	/** 身份证号**/
	public String id_number;
	
	/** 毕业院校**/
	public String graduate_school;
	
	/** 政治面貌**/
	public String political_expierence;
	
	/** 户籍地址**/
	public String census_register_address;
	
	/** 户籍类型**/
	public int census_register_type;
	
	/** 标签**/
	public String tags;
	
	/** QQ号**/
	public String qq_num;
	
	/** 微信号**/
	public String weichat_num;
	
	/** 入职日期**/
	public Date join_date;
	
	/** 转正日期**/
	public Date probation_end_date;
	
	/** 参加工作时间**/
	public Date start_work_date;
	
	/** 状态**/
	public int status;
	
	/** 员工类型**/
	public int type;
	
}
