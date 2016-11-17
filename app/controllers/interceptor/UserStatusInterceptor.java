/*package controllers.interceptor;

import org.apache.commons.lang.StringUtils;

import play.mvc.Before;
import play.mvc.Controller;
import annotation.InactiveUserCheck;
import annotation.IpsAccountCheck;
import annotation.LoginCheck;
import annotation.RealNameCheck;
import business.Product;
import business.User;
import constants.Constants;
import controllers.front.account.BasicInformation;
import controllers.front.account.CheckAction;
import controllers.front.account.LoginAndRegisterAction;
import controllers.front.bid.BidAction;

*//**
 * 用户状态拦截器 包括：未登陆、托管未开户、账户未激活、未实名认证
 *
 * @author hys
 * @createDate 2015年9月9日 下午6:24:57
 *
 *//*
public class UserStatusInterceptor extends Controller
{

    *//**
     * 登陆拦截器
     *//*
    @Before(priority = 1)
    static void checkLogin()
    {

        LoginCheck checkAction = getActionAnnotation(LoginCheck.class);

        if (checkAction == null)
        { // 不拦截

            return;
        }

        User user = User.currUser();

        if (user == null)
        { // 未登陆
            if (checkAction.value())
            { // ajax

                renderText(LoginCheck.TOKEN);
            }

            LoginAndRegisterAction.login();
        }
    }

    *//**
     * 资金托管账户开户拦截
     *//*
    @Before(priority = 2)
    static void checkIpsAccount()
    {
        if (!Constants.IPS_ENABLE)
        { // 非资金托管不拦截

            return;
        }

        IpsAccountCheck checkAction = getActionAnnotation(IpsAccountCheck.class);

        if (checkAction == null)
        { // 不拦截

            return;
        }

        User user = User.currUser();

        if (user == null)
        { // 未登录
            if (checkAction.value())
            { // ajax

                renderText(LoginCheck.TOKEN);
            }

            LoginAndRegisterAction.login();
        }

        if (StringUtils.isBlank(user.sinaAcctNo))
        { // 未开户
            if (checkAction != null && checkAction.value())
            {

                renderText(IpsAccountCheck.TOKEN);
                ; // ajax请求
            }

            // update by fz 20160608修改未开户跳转页面
            BasicInformation.certification();
            // CheckAction.trustAccount(); //非ajax
        }

    }

    *//**
     * 用户未激活拦截器
     *//*
    @Before(priority = 3)
    static void checkInactiveUser()
    {
        if (Constants.IPS_ENABLE)
        { // 资金托管不拦截

            return;
        }

        InactiveUserCheck checkAction = getActionAnnotation(InactiveUserCheck.class);

        if (checkAction == null)
        { // 不拦截

            return;
        }

        User user = User.currUser();

        if (user == null)
        { // 未登录

            if (checkAction.value())
            {
                renderText(LoginCheck.TOKEN);
            }

            LoginAndRegisterAction.login();
        }

        if (!(user.isEmailVerified || user.isMobileVerified))
        { // 用户未激活

            if (checkAction.value())
            {

                renderText(InactiveUserCheck.TOKEN);
            }

            CheckAction.inactiveUser();
        }
    }

    *//**
     * 用户未实名认证拦截器
     *//*
    @Before(priority = 4)
    static void checkRealName()
    {

        RealNameCheck checkAction = getActionAnnotation(RealNameCheck.class);

        if (checkAction == null)
        { // 不拦截

            return;
        }

        User user = User.currUser();

        if (user == null)
        { // 未登录

            if (checkAction.value())
            {
                renderText(LoginCheck.TOKEN);
            }

            LoginAndRegisterAction.login();
        }

        if (StringUtils.isBlank(user.realityName))
        { // 未实名认证

            if (checkAction.value())
            {

                renderText(RealNameCheck.TOKEN);
            }

            BasicInformation.certification();
        }
    }

    *//**
     * 用户未完善资料拦截器
     *//*
    @Before(only =
    { "front.bid.BidAction.applyNow", "front.bid.BidAction.createBid" }, priority = 5)
    static void checkBaseInfo()
    {

        User user = User.currUser();

        if (user == null)
        {

            LoginAndRegisterAction.login();
        }

        user.id = User.currUser().id; // 及时在抓取一次

        if (user.isAddBaseInfo)
        {

            return;
        }

        String _productId = params.get("productId");

        if (StringUtils.isBlank(_productId))
            render(Constants.ERROR_PAGE_PATH_FRONT);

        long productId = 0;

         无法转换，跳转至首页 
        try
        {
            productId = Long.parseLong(_productId);
        }
        catch (Exception e)
        {
            BidAction.index(productId, 0, 1);
        }

         如果是合作机构标及其未启动 
        Boolean falg = Product.isAgency(productId);

        if (null == falg || falg)
        {
            BidAction.index(productId, 0, 1);
        }

        String referer = request.headers.get("referer").value();

        if (StringUtils.contains(referer, "/front/bidAction/index"))
        {
            BidAction.index(productId, Constants.NOT_ADDBASEINFO, 0);
        }

        if (StringUtils.contains(referer, "/front/bidAction/detail"))
        {
            BidAction.detail(productId, Constants.NOT_ADDBASEINFO, 0);
        }

        BidAction.index(productId, 0, 1);
    }
}
*/