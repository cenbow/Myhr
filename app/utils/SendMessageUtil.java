package utils;

import com.bcloud.msg.http.HttpSender;

import constants.Constants;

/**
 * add by lbd 20160801
 * 
 * @author Administrator
 *
 */
public class SendMessageUtil
{
    public void sendMessage(String cont, String mobile, String... param)
    {
        String[] arrayList = cont.split("#");
        int j = 0;
        String test = "";
        for (int i = 0; i < arrayList.length; i++)
        {
            j = (i - 1) / 2;
            if (i % 2 == 1)
            {
                arrayList[i] = param[j];
            }
            test += arrayList[i];
        }
        // String cont1 = Constants.MSG_SIGN;
        String content = test;

        String uri = Constants.MESSAGE_URL;// 应用地址
        String account = Constants.ACCOUNT_NUMBER;// 账号
        String pswd = Constants.ACCOUNT_PASSWORD;// 密码
        boolean needstatus = true;// 是否需要状态报告，需要true，不需要false
        String product = "";// 产品ID
        String extno = "001";// 扩展码

        try
        {
            String result_mt = HttpSender.batchSend(uri, account, pswd, mobile, content, needstatus, product, extno);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

    }

}
