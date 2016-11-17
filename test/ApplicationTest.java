import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.junit.Test;

import play.test.UnitTest;

public class ApplicationTest extends UnitTest
{

    // @Test
    // public void testThatIndexPageWorks() {
    // Response response = GET("/");
    // assertIsOk(response);
    // assertContentType("text/html", response);
    // assertCharset(play.Play.defaultWebEncoding, response);
    // }

    @Test
    public void testPayforInvataion()
    {
        // t_users t_user = new t_users();
        // double ipsBalance =
        // t_user.find("select ips_balance as ips_balance from t_users where id =?",
        // Long.valueOf("117")).first();
        // System.out.println(ipsBalance);

        // User.payForInvitation();
//        String sqlInvestNotNovice = "select ifnull(sum(receive_corpus + receive_interest),0) from t_bill_invests where bid_id not in(select id from t_bids where is_novice_invest = 1) and user_id = ?";
//        String sqlInvestNovice = "select ifnull(sum(receive_interest),0) from t_bill_invests where bid_id in(select id from t_bids where is_novice_invest = 1) and user_id = ?";
//        double doubleInvestNotNovice;
//        double doubleInvestNovice;
//        try
//        {
//            doubleInvestNotNovice = t_bill_invests.find(sqlInvestNotNovice, Long.valueOf("673")).first();
//            doubleInvestNovice = t_bill_invests.find(sqlInvestNovice, Long.valueOf("673")).first();
//
//            System.out.println(doubleInvestNotNovice);
//            System.out.println(doubleInvestNovice);
//        }
//        catch (Exception e)
//        {
//            e.printStackTrace();
//        }
    }

    public static void main(String[] args)
    {
        Calendar calendar = Calendar.getInstance();// 此时打印它获取的是系统当前时间
        calendar.add(Calendar.DATE, -1); // 得到前一天
        String yestedayDate = new SimpleDateFormat("yyyy-MM-dd 00:00:00").format(calendar.getTime());
        System.out.println(yestedayDate);
    }

}