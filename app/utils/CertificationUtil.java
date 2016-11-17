package utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URISyntaxException;


import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.json.JSONException;
import org.json.JSONObject;

import constants.Constants;

/**
 * 身份证实名认证
 * 
 * @author Administrator
 */
public class CertificationUtil {
	/**
	 * 身份证实名认证
	 * 
	 * @param name
	 *            真实姓名
	 * @param idNumber
	 *            身份证号
	 * @throws URISyntaxException 
	 * @throws IOException 
	 * @throws JSONException 
	 */
	public static void id5Check(String name, String idNumber, ErrorInfo error) {
		error.clear();
		
		String id5_url = Constants.ID5_URL;
		String appkey = Constants.APP_KEY;
		//String id5_url = "http://api.id98.cn/api/idcard";
		//String appkey = "16285d8106d1500ba77f8473dab75213";
		//http://api.id98.cn/api/idcard?appkey=d10a8e06284cf889deaf93ffb5d9c60a&name=%E9%82%93%E6%B0%B8%E6%9C%9B&cardno=610922197401232578
		String requestUrl = id5_url+"?appkey="+appkey+"&name="+name+"&cardno="+idNumber;
		System.out.println(requestUrl);
		//String requestUrl = "http://api.id98.cn/api/idcard?appkey=d10a8e06284cf889deaf93ffb5d9c60a&name=邓永望&cardno=610922197401232578";
		BufferedReader in = null;
		String content = null;
		try {
			// 定义HttpClient
			HttpClient httpClient = new DefaultHttpClient(new ThreadSafeClientConnManager());
			// 实例化HTTP方法
			HttpGet request = new HttpGet();
			request.setURI(new URI(requestUrl));
			HttpResponse response = httpClient.execute(request);

			in = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
			StringBuffer sb = new StringBuffer("");
			String line = "";
			String NL = System.getProperty("line.separator");
			while ((line = in.readLine()) != null) {
				sb.append(line + NL);
			}
			in.close();
			content = sb.toString();
		}catch(Exception e) {
			error.code = -1;
			error.msg = "系统异常";
			e.printStackTrace();
		} finally {
			if (in != null) {
				try {
					in.close();// 最后要关闭BufferedReader
				} catch (Exception e) {
					error.code = -1;
					error.msg = "系统异常";
					e.printStackTrace();
				}
			}
			//System.out.println(content);
			//return content;
		}
		System.out.println(content);
		JSONObject jobj;
		int isOk = 0;
		int code = 0;
		try {
			jobj = new JSONObject(content);
			System.out.println(jobj.get("isok"));
			isOk = jobj.getInt("isok");
			code = jobj.getInt("code");
		} catch (JSONException e) {
			error.code = -1;
			error.msg = "系统异常";
			e.printStackTrace();
		}
		if(isOk == 1) {//查询成功
			switch (code) {
				case 1:
					error.code = 1;
					error.msg = "身份证与姓名一致";
					break;
				case 2:
					error.code = -2;
					error.msg = "身份证与姓名不一致";
					break;
				case 3:
						error.code = -3;
						error.msg = "无此身份证号码";
				default:
					break;
			}
	    }  else if(isOk == 0){//查询失败
			switch (code) {
				case 11:
					error.code = -11;
					error.msg = "查询失败，参数不正确";
					break;
				case 12:
					error.code = -12;
					error.msg = "查询失败，商户余额不足";
					break;
				case 13:
					error.code = -13;
					error.msg = "查询失败，appkey不存在";
					break;
				case 14:
					error.code = -14;
					error.msg = "查询失败，IP被拒绝";
					break;
				case 20:
					error.code = -20;
					error.msg = "身份证中心维护中";
					break;
				default:
					break;
			}
		}
		//{"isok":1,"code":2,"data":{"err":0,"address":"\u9655\u897f\u7701\u5b89\u5eb7\u5e02\u77f3\u6cc9\u53bf","sex":"M","birthday":"1974-01-23"}}
	}
	
	public static void main(String[] args) {
		ErrorInfo error = new ErrorInfo();
		
		id5Check("宋佳", "420923199210051870", error);
		System.out.println(error.msg+","+error.code);
		
	}
}
