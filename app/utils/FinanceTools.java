package utils;

public class FinanceTools {

	/**
	 * 按月还款
	 * excel 中rate()函数
	 * @param a 现值
	 * @param b 年金
	 * @param c 期数
	 * @param cnt 循环次数
	 * @param ina 精确到小数点后10位
	 * @return
	 */
	public static double excelRate(double a,double b,double c,int cnt,int ina){  
	    double rate = 1,x,jd = 0.1,side = 0.1,i = 1;  
	    do{  
	        x = a/b - (Math.pow(1+rate, c)-1)/(Math.pow(rate+1, c)*rate);  
	        if(x*side>0){side = -side;jd *=10;}  
	        rate += side/jd;  
	    }while(i++<cnt&&Math.abs(x)>=1/Math.pow(10, ina));  
	    if(i>cnt)return Double.NaN;  
	    return rate;  
	}
	
	/**
	 * 每月付息，到期还本
	 * @param planTotal
	 * @param putIn
	 * @param time 月份
	 * 年平均收益率 = (预计到期本金收益和 / 计划投资金额) ^ (1 / 投资年限) - 1
	 * @return
	 */
	public static double rateTotal(double planTotal,double putIn,int time){  
		float year = time*1.0f / 12;//月份转换成年
	    
		double rate = Math.pow(planTotal/putIn, 1/year) - 1;
	    return rate;  
	}
	
	/**
	 * 将数字转换为大写
	 * @param input
	 * @return
	 */
	public static String numberToChinese(String input) {
		String s1 = "零壹贰叁肆伍陆柒捌玖";
		String s4 = "分角整元拾佰仟万拾佰仟亿拾佰仟";
		String temp = "";
		String result = "";
		if (input == null)
			return "输入的字串不是数字串只能包括以下字符（'0'~'9','.'),输入字串最大只能精确到仟亿，小数点只能两位！";
		temp = input.trim();
		float f;
		try {
			f = Float.parseFloat(temp);
		} catch (Exception e) {
			return "输入的字串不是数字串只能包括以下字符（'0'~'9','.'),输入字串最大只能精确到仟亿，小数点只能两位！";
		}
		int len = 0;
		if (temp.indexOf(".") == -1)
			len = temp.length();
		else
			len = temp.indexOf(".");
		if (len > s4.length() - 3)
			return ("输入字串最大只能精确到仟亿，小数点只能两位！");
		int n1 = 0;
		String num = "";
		String unit = "";
		for (int i = 0; i < temp.length(); i++) {
			if (i > len + 2) {
				break;
			}
			if (i == len) {
				continue;
			}
			n1 = Integer.parseInt(String.valueOf(temp.charAt(i)));
			num = s1.substring(n1, n1 + 1);
			n1 = len - i + 2;
			unit = s4.substring(n1, n1 + 1);
			result = result.concat(num).concat(unit);
		}
		if ((len == temp.length()) || (len == temp.length() - 1))
			result = result.concat("整");
		if (len == temp.length() - 2)
			result = result.concat("零分");
		return result;
	}
}
