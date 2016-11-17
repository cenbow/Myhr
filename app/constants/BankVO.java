package constants;

import javax.persistence.Entity;

import play.db.jpa.Model;

@Entity
public class BankVO extends Model{
	public String name;
	public String code;
	public String logo;
	public int sequence;
	public boolean isUse;
	@Override
	public String toString() {
		return "BankVO [id=" + id + ", name=" + name + ", code=" + code + ", logo=" + logo + ", sequence="
				+ sequence + ", isUse=" + isUse + "]";
	}
	public BankVO(Long id,String name, String code) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
	}
}