package controllers;

import com.shove.web.security.InjectionInterceptor;

import constants.Constants;
import play.Logger;
import play.Play;
import play.mvc.Before;
import play.mvc.Controller;
import play.mvc.Http.Request;
import utils.ErrorInfo;

public class BaseController extends Controller
{

    /**
     * 脚本注入拦截器
     * 
     * @throws Exception
     */
    @Before
    protected static void injectionInterceptor() throws Exception
    {

        try
        {
            new InjectionInterceptor().run();
        }
        catch (Exception e)
        {
            response.status = 401;
            renderText("系统检测到您提交的数据中存在恶意的注入型攻击数据(或 img 标签的 src 文件类型不合法)，请检查 POST、GET 数据");
            // renderText(e.getMessage());
        }
    }

    /**
     * 更新用户登陆状态，打印请求地址
     */
    @Before(unless =
    { "front.account.LoginAndRegisterAction.setCode", "Application.images",
            "front.account.LoginAndRegisterAction.getImg" })
    protected static void updateUserLoginState()
    {
        Request request = Request.current.get();
        Logger.debug("正在执行action请求命令：" + request.action);

        // 更新用户登陆凭证时间为30分钟
//        User.setCurrUser(User.currUser());
    }

    /**
     * 获取当前请求根路径
     * 
     * @return
     */
    public static String getBaseURL()
    {
        String baseURL = Constants.BASE_URL;

        Request req = Request.current();
        if (req != null)
        {
            baseURL = req.getBase() + Play.configuration.getProperty("http.path") + "/";
        }

        return baseURL;
    }

    /**
     * 跳转错误提示页面
     */
    public static void payErrorInfo(ErrorInfo error)
    {
        render(error);
    }

}
