/*package controllers.interceptor;

import org.apache.commons.lang.StringUtils;

import play.mvc.Before;
import play.mvc.Controller;
import utils.ErrorInfo;
import utils.Security;
import annotation.InactiveUserCheck;
import annotation.IpsAccountCheck;
import annotation.LoginCheck;
import business.User;
import constants.Constants;
import controllers.front.account.BasicInformation;
import controllers.front.account.CheckAction;
import controllers.front.account.LoginAndRegisterAction;

*//**
 * 前台-我的账户栏目拦截器
 *
 * @author hys
 * @createDate 2015年9月11日 下午4:47:42
 * 
 *
 *//*



public class AccountInterceptor extends Controller
{

    *//**
     * 正版授权拦截
     *//*
    @Before(unless =
    { "front.account.FundsManage.gCallback", "front.account.FundsManage.gCallbackSys",
            "front.account.FundsManage.callback", "front.account.FundsManage.callbackSys" }, priority = 1)
    static void checkLicense()
    {
        
         * try{
         * License.update(BackstageSet.getCurrentBackstageSet().registerCode);
         * if(!(License.getDomainNameAllow() && License.getWebPagesAllow())) {
         * flash.put("error", "此版本非正版授权，请联系晓风软件购买正版授权！");
         * LoginAndRegisterAction.login(); } }catch (Exception e) {
         * e.printStackTrace(); Logger.info("进行正版校验时：" + e.getMessage());
         * flash.put("error", "此版本非正版授权，请联系晓风软件购买正版授权！");
         * LoginAndRegisterAction.login(); }
         
    }

    *//**
     * 登陆拦截
     *//*
    @Before(unless =
    { "front.account.FundsManage.gCallback", "front.account.FundsManage.gCallbackSys",
            "front.account.FundsManage.callback", "front.account.FundsManage.callbackSys",
            "front.account.FundsManage.submitRechargeApp" }, priority = 2)
    static void checkLogin()
    {

        String sign = params.get("id");
        long id = Security.checkSign(sign, Constants.USER_ID_SIGN, 60 * 60 * 12, new ErrorInfo());
        User user = null;

        if (id > 0)
        {
            user = User.currAppUser(id + "");
            // 来自于APP的webview访问并设更新户信息
            User.setCurrUser(user);
        }
        else
        {
            user = User.currUser();

            if (user == null)
            {
                LoginAndRegisterAction.login();
            }
        }

        if (user != null)
        {
            renderArgs.put("user", user);
            return;
        }

        LoginCheck checkAction = getActionAnnotation(LoginCheck.class);

        if (checkAction != null && checkAction.value())
        { // ajax请求

            renderText(LoginCheck.TOKEN);
        }

        LoginAndRegisterAction.login(); // 非ajax请求

    }

    *//**
     * 资金托管账户开户拦截
     *//*
    @Before(unless =
    { "front.account.BasicInformation.certification", "front.account.BasicInformation.doCertification",
            "front.account.AccountHome.home", "front.account.BasicInformation.basicInformation",
            "front.account.AccountHome.accountSecurity", "front.account.AccountHome.loanAccount",
            "front.account.AccountHome.myLoanBills", "front.account.AccountHome.auditingLoanBids",
            "front.account.FundsManage.accountInformation", "front.account.InvestAccount.investRecord",
            "front.account.InvestAccount.repayingInvestBid", "front.account.InvestAccount.investBills",
            "front.account.FundsManage.dealRecord", "front.account.Spread.spreadLink",
            "front.account.AccountHome.bonusByUser", "front.account.FundsManage.myExperienceGold",
            "front.account.Spread.spreadUser", "front.account.FundsManage.myCredit",
            "front.account.AccountHome.queryQualityDebts", "front.account.AccountHome.queryQualityBids" }, priority = 3)
    static void checkIpsAccount()
    {
        if (!Constants.IPS_ENABLE)
        {

            return;
        }

        User user = User.currUser();

        IpsAccountCheck checkAction = getActionAnnotation(IpsAccountCheck.class);

        if (user == null)
        { // 未登录

            if (checkAction != null && checkAction.value())
            { // ajax请求

                renderText(LoginCheck.TOKEN);
            }

            LoginAndRegisterAction.login(); // 非ajax请求
        }

        // 并存
        if (Constants.TRUST_FUNDS_TYPE.equals("SINA"))
        {
            if (StringUtils.isBlank(user.sinaAcctNo))
            { // 未开户

                if (checkAction != null && checkAction.value())
                {

                    renderText(IpsAccountCheck.TOKEN);
                    ; // ajax请求
                }

                // update by fz 20160608 修改未开户页面
                BasicInformation.certification();
                // CheckAction.trustAccount(); // 非ajax
            }
        }

        if (Constants.TRUST_FUNDS_TYPE.equals("HX3.0"))
        {
            if (StringUtils.isBlank(user.ipsAcctNo))
            { // 未开户

                if (checkAction != null && checkAction.value())
                {

                    renderText(IpsAccountCheck.TOKEN);
                    ; // ajax请求
                }

                // update by fz 20160608 修改未开户页面
                BasicInformation.certification();
                // CheckAction.trustAccount(); // 非ajax
            }
        }

    }

    *//**
     * 用户未激活拦截器
     *//*
    @Before(priority = 4)
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

    // update by fz 20160608实名认证同开户
    *//**
     * 用户未实名认证拦截器
     *//*
    @Before(unless =
    { "front.account.BasicInformation.certification", "front.account.BasicInformation.doCertification",
            "front.account.AccountHome.home", "front.account.BasicInformation.basicInformation",
            "front.account.AccountHome.accountSecurity", "front.account.AccountHome.loanAccount",
            "front.account.AccountHome.myLoanBills", "front.account.AccountHome.auditingLoanBids",
            "front.account.FundsManage.accountInformation", "front.account.InvestAccount.investRecord",
            "front.account.InvestAccount.repayingInvestBid", "front.account.InvestAccount.investBills",
            "front.account.FundsManage.dealRecord", "front.account.Spread.spreadLink",
            "front.account.AccountHome.bonusByUser", "front.account.FundsManage.myExperienceGold",
            "front.account.Spread.spreadUser", "front.account.FundsManage.myCredit",
            "front.account.AccountHome.queryQualityDebts", "front.account.AccountHome.queryQualityBids" }, priority = 5)
    static void checkRealName()
    {
        // add by fz 20160608 资金托管的话同步开户认证，不需要再认证
        // if (Constants.IPS_ENABLE)
        // { // 资金托管不拦截
        //
        // return;
        // }
        
         * RealNameCheck checkAction = getActionAnnotation(RealNameCheck.class);
         * 
         * if(checkAction == null){ //不拦截
         * 
         * return; }
         

        User user = User.currUser();

        if (user == null)
        { // 未登录

            
             * if(checkAction.value()){ renderText(LoginCheck.TOKEN); }
             

            LoginAndRegisterAction.login();
        }

        if (StringUtils.isBlank(user.realityName))
        { // 未实名认证

            
             * if(checkAction.value()){
             * 
             * renderText(RealNameCheck.TOKEN); }
             
            BasicInformation.certification();
        }
    }

    *//**
     * 模拟登录拦截
     *//*
    @Before(only =
    { "front.account.AccountHome.uploadPhoto", "front.account.AccountHome.applyForOverBorrow",
            "front.account.AccountHome.vipApply", "front.account.AccountHome.setNoteName",
            "front.account.AccountHome.sendMessage", "front.account.Message.deleteSystemMsgs",
            "front.account.Message.markMsgsReaded", "front.account.Message.markMsgsUnread",
            "front.account.Message.deleteInboxMsgs", "front.account.Message.deleteOutboxMsgs",
            "front.account.Message.replyMsg", "front.account.Message.createAnswers",
            "front.account.Message.deleteBidQuestion", "front.account.AccountHome.attentionUser",
            "front.account.AccountHome.cancelAttentionUser", "front.account.AccountHome.vipMoney",
            "front.account.AccountHome.vipApply", "front.account.AccountHome.submitRepayment",
            "front.account.AccountHome.repealLoaningBid", "front.account.AccountHome.repealAuditingBid",
            "front.account.AccountHome.deleteAuditItem", "front.account.AccountHome.createUserAuditItem",
            "front.account.BasicInformation.saveInformation", "front.account.BasicInformation.verifySafeQuestion",
            "front.account.BasicInformation.saveSafeQuestion", "front.account.BasicInformation.resetSafeQuestion",
            "front.account.BasicInformation.saveSafeQuestionByEmail", "front.account.BasicInformation.saveEmail",
            "front.account.BasicInformation.savePassword", "front.account.BasicInformation.editPayPassword",
            "front.account.BasicInformation.editPayPassword", "front.account.BasicInformation.savePayPassword",
            "front.account.BasicInformation.resetPayPassword", "front.account.BasicInformation.saveMobile",
            "front.account.BasicInformation.bindMobile", "front.account.FundsManage.addBank",
            "front.account.FundsManage.editBank", "front.account.FundsManage.deleteBank",
            "front.account.FundsManage.userAuditItem", "front.account.FundsManage.submitWithdrawal",
            "front.account.FundsManage.exportDealRecords", "front.account.FundsManage.submitRecharge",
            "front.account.InvestAccount.cancleBid", "front.account.InvestAccount.increaseAuction",
            "front.account.InvestAccount.transact", "front.account.InvestAccount.acceptDebts",
            "front.account.InvestAccount.notAccept", "front.account.InvestAccount.addBlack",
            "front.account.InvestAccount.removeBlacklist", "front.account.InvestAccount.closeRobot",
            "front.account.InvestAccount.saveOrUpdateRobot", "front.account.LoginAndRegisterAction.saveUsernameByTele",
            "front.account.LoginAndRegisterAction.savePasswordByMobile",
            "front.account.LoginAndRegisterAction.sendResetEmail",
            "front.account.LoginAndRegisterAction.savePasswordByEmail", "front.bid.BidAction.createBid",
            "front.bid.BidAction.saveInformation", "front.debt.DebtAction.confirmTransfer",
            "front.debt.DebtAction.auction", "front.debt.DebtAction.reportUser", "front.help.HelpCenterAction.support",
            "front.help.HelpCenterAction.opposition ", "front.invest.InvestAction.confirmInvest",
            "front.invest.InvestAction.confirmInvestBottom", "front.invest.InvestAction.collectBid",
            "front.account.Message.sendMsg", "Application.dlImages" })
    static void simulateLogin(String encryString)
    {
        if (null != User.currUser() && null != User.currUser().simulateLogin)
        {
            if (User.currUser().simulateLogin.equalsIgnoreCase(User.currUser().encrypt()))
            {
                flash.error("模拟登录不能进行该操作");
                String url = request.headers.get("referer").value();
                redirect(url);
            }
            else
            {
                flash.error("模拟登录超时，请重新操作");
                String url = request.headers.get("referer").value();
                redirect(url);
            }
        }
    }
}
*/