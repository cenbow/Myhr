package utils;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

import play.Play;

/**
 * 淘宝短信接口
 * @author songjia
 */
public class TaoBaoSMSUtil {

	public static final String url = Play.configuration.getProperty("sms_url", "");//投保短信接口请求地址
	public static final String appkey = Play.configuration.getProperty("sms_key", "");//淘宝短信接口key
	public static final String appsecret = Play.configuration.getProperty("sms_secret", "");//淘宝短信接口secret
	public static final String msgSign = Play.configuration.getProperty("msg_sign", "");//淘宝短信接口签名
	/**
	 * 淘宝短信接口
	 * @param mobile 手机号
	 * @param msgID  短信模板ID  
	 * @param smgParams 短信参数  "{\"code\":\"1234\",\"product\":\"alidayu\"}"
	 */
	public static void sendSMS(String mobile, String msgID, String smgParams) {
		//TaobaoClient client = new DefaultTaobaoClient("http://gw.api.taobao.com/router/rest", "23300821", "628428e6c6cd13f23c06fb1355c961f8");
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, appsecret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		//req.setExtend("123456");
		req.setSmsType("normal");//短信类型
		req.setSmsFreeSignName(msgSign);//短信签名
		//req.setSmsFreeSignName("登录验证");//短信签名
		req.setSmsParamString(smgParams);//参数
		req.setRecNum(mobile);//短信接收号码
		req.setSmsTemplateCode(msgID);//短信模板ID
		AlibabaAliqinFcSmsNumSendResponse rsp = null;
		try {
			rsp = client.execute(req);
		} catch (ApiException e) {
			e.printStackTrace();
		}
		System.out.println(rsp.getBody());
	}
	
	public static void main(String[] args) {
		ErrorInfo error = new ErrorInfo();
		String mobile = "13168796024";
		/**
		 * 提现申请短信测试
		 * SMS_4955386
		 * 内容：尊敬的${userName}: 您正在平台申请提现，提现金额${amount}元，请确认是否本人操作。
		 */
		//sendSMS(mobile, "SMS_4955386", "登录验证", "{\"userName\":\"宋佳\",\"amount\":\"100\"}", error);
		
		
		//测试1
		/**
		 * mobile:
		 */
		sendSMS(mobile,"SMS_4745432","{\"code\":\"6598\",\"product\":\"alidayu\"}");
		
		/**
		 * 充值短信测试
		 * 内容：尊敬的${userName}: 您在平台充值了${money}元。
		 */
		//sendSMS(mobile, "SMS_4690969", "登录验证", "{\"userName\":\"宋佳\",\"money\":\"100\"}", error);
		
		/**
		 * 投标成功短信测试
		 * SMS_4920437
		 * 尊敬的${userName}: 恭喜您投资成功！投资金额${investAmount}元，投资期限${period} ${date}，年化收益率${apr}%，还款方式:${description}。
		 */
		//sendSMS(mobile, "SMS_4920437", "登录验证", "{\"userName\":\"宋佳\",\"investAmount\":\"100\",\"period\":\"1年\",\"date\":\"2016-01-25\",\"apr\":\"5%\",\"description\":\"投标成功%\"}", error);
		
		/**
		 * 放款成功短信测试
		 * SMS_4965418
		 * 内容：尊敬的${userName}: 您申请的编号${bidId}借款标已成功放款，借款金额${amount}元，扣除管理费${serviceFees}元，账户到账金额${money}元。
		 */
		//sendSMS(mobile, "SMS_4965418", "登录验证", "{\"userName\":\"宋佳\",\"bidId\":\"1\",\"amount\":\"100\",\"serviceFees\":\"10\",\"money\":\"90\"}", error);
		
		/**
		 * 回款成功短信测试
		 * 内容：尊敬的${userName}: 您投资的编号${bidId}借款标${repayPeriod}期已成功还款，回款金额${recivedSum}元，扣除管理费${mFee}元，实得总额${msFee}元。
		 * SMS_4925529
		 */
		//sendSMS(mobile, "SMS_4925529", "{\"userName\":\"宋佳\",\"bidId\":\"1\",\"repayPeriod\":\"1\",\"recivedSum\":\"10\",\"mFee\":\"1\",\"msFee\":\"9\"}");
		
		/**
		 * 还款成功短信测试
		 * SMS_4980437
		 * 内容：尊敬的${userName}: 您申请的编号{bidId}借款标{repayPeriod}期成功还款，还款金额{needSum}元。
		 */
		//sendSMS(mobile, "SMS_4980437", "{\"userName\":\"宋佳\",\"bidId\":\"1\",\"repayPeriod\":\"1\",\"needSum\":\"10\"}");
		
		
		
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("\"userName\"", "\"宋佳\"");
//		map.put("\"bidId\"", "\"1\"");
//		map.put("\"repayPeriod\"", "\"1\"");
//		map.put("\"recivedSum\"", "\"10\"");
//		map.put("\"mFee\"", "\"1\"");
//		map.put("\"msFee\"", "\"9\"");
//		String params = map.toString().replace("=", ":");
//		System.out.println(map.toString().replace("=", ":"));
//		sendSMS(mobile, "SMS_4925529", "登录验证", params, error);
		
	}
	
	
	
}
