package models;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;
import constants.Constants;
import play.db.jpa.Model;

/**
 * 任职人员
 * @author fz
 * @createDate 2016年12月1日 下午12:03:31
 */
@Entity
public class v_staff extends Model {
	public String name;
	public int status;
	public int employee_type;
	public int position_id;
	public int dept_id;
	public String staff_id;
	public Date join_date;
}
