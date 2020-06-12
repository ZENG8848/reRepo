using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace reCruit
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // 在应用程序启动时运行的代码
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            
            Application["total"] = 0; //总人数初始为0
            Application["online"] = 0;//在线人数初始为0
        }

        void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["total"] = (int)Application["total"] + 1;//总人数增加
            Application["online"] = (int)Application["online"] + 1;//在线人数增加
            Application.UnLock();
        }

        void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["online"] = (int)Application["online"] - 1;//总人数不变，在线人数减少
            Application.UnLock();
        }
    }
}