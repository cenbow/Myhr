/*package controllers.interceptor;

import java.util.Date;
import java.util.List;

import models.t_right_actions;
import models.t_rights_of_supervisor;

import org.apache.commons.lang.StringUtils;

import play.Logger;
import play.mvc.Before;
import utils.DateUtil;
import utils.ErrorInfo;
import business.BackstageSet;
import business.Right;
import business.Supervisor;
import constants.OptionKeys;
import controllers.Application;
import controllers.BaseController;
import controllers.supervisor.account.AccountAction;
import controllers.supervisor.login.LoginAction;

*//**
 * 后台拦截器
 * 
 * @author lzp
 * @version 6.0
 * @created 2014-6-5
 *//*
public class SupervisorInterceptor extends BaseController
{
    *//**
     * 登录拦截
     *//*
    @Before(unless =
    { "supervisor.login.LoginAction.login", "supervisor.managementHome.HomeAction.showHome",
            "supervisor.systemSettings.SoftwareLicensAction.notRegister",
            "supervisor.systemSettings.SoftwareLicensAction.saveSoftwareLicens",
            "supervisor.financeManager.PlatformAccountManager.ipsOffSingleDeal" })
    public static void checkLogin()
    {
        
         * try{
         * License.update(BackstageSet.getCurrentBackstageSet().registerCode);
         * if(!(License.getDomainNameAllow() && License.getAdminPagesAllow())) {
         * flash.put("error", "此版本非正版授权，请联系晓风软件购买正版授权！");
         * SoftwareLicensAction.notRegister(); } }catch (Exception e) {
         * e.printStackTrace(); Logger.info("进行正版校验时：" + e.getMessage());
         * flash.put("error", "此版本非正版授权，请联系晓风软件购买正版授权！");
         * SoftwareLicensAction.notRegister(); }
         
        // 普通请求
        if (Supervisor.isLogin())
        {
            return;// 登录
        }

        boolean isAjax = request.isAjax();
        if (isAjax)
        {
            renderText("UNLOGIN");
        }
        else
        {
            LoginAction.loginInit();
        }

    }

    *//**
     * 管理员对象放入renderArgs里边
     *//*
    @Before
    public static void putSupervisor()
    {
        if (!Supervisor.isLogin())
        {
            return;
        }

        renderArgs.put("supervisor", Supervisor.currSupervisor());
        renderArgs.put("systemOptions", BackstageSet.getCurrentBackstageSet());
    }

    *//**
     * 权限拦截
     *//*
    @Before(unless =
    { "supervisor.account.AccountAction.home", "supervisor.account.AccountAction.editSupervisor",
            "supervisor.financeManager.PlatformAccountManager.ipsOffSingleDeal" })
    public static void checkRight()
    {
        String action = request.action;

        Supervisor currSupervisor = Supervisor.currSupervisor();

        if (null == currSupervisor)
        {
            boolean isAjax = request.isAjax();
            if (isAjax)
            {
                renderText("UNLOGIN");
            }
            else
            {
                LoginAction.loginInit();
            }

            return;
        }

        if (hasRight(action, currSupervisor))
        {
            return;
        }

        if (request.isAjax())
        {
            String result = "{\"token\":\"NONERIGHT\",\"action\":\"" + action + "\"}";
            renderJSON(result);// 没有权限
        }
        else
        {
            Application.insufficientRight(action);
        }

    }

    private static boolean hasRight(String action, Supervisor currSupervisor)
    {
        ErrorInfo error = new ErrorInfo();
        List<t_right_actions> rightIds = Right.queryRightIdByAction(action, error);

        if (error.code < 0 || rightIds == null)
        {
            flash.error(error.msg);

            Logger.error("判断管理员是否有权限时，%s", error.msg);
            Logger.error("action=%s", action);

            return false;
        }

        for (t_right_actions tra : rightIds)
        {
            List<t_rights_of_supervisor> list = currSupervisor
                    .getRightsOnAction(tra.right_id, currSupervisor.id, error);
            if (error.code < 0)
            {
                flash.error(error.msg);

                return false;
            }

            if (list == null || list.size() == 0)
            {
                continue;
            }

            if (list.get(0).right_type >= tra.action_type)
            {
                return true;
            }
        }

        return false;
    }

    *//**
     * 未设密码拦截
     *//*
    @Before(unless =
    { "supervisor.account.AccountAction.home", "supervisor.account.AccountAction.editSupervisor",
            "supervisor.systemSettings.SoftwareLicensAction.notRegister",
            "supervisor.systemSettings.SoftwareLicensAction.saveSoftwareLicens",
            "supervisor.financeManager.PlatformAccountManager.ipsOffSingleDeal" })
    public static void goAccountHome()
    {
        Supervisor supervisor = Supervisor.currSupervisor();

        if (null == supervisor)
        {
            LoginAction.loginInit();

            return;
        }

        if (StringUtils.isBlank(supervisor.password))
        {
            OptionKeys.siteValue(OptionKeys.PLATFORM_STARTUP_TIME, DateUtil.dateToString(new Date()), new ErrorInfo());

            AccountAction.home();
        }
    }

}
*/