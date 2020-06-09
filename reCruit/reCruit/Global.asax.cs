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
            
            Application["total"] = 0;
            Application["online"] = 0;
        }

        void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["total"] = (int)Application["total"] + 1;
            Application["online"] = (int)Application["online"] + 1;
            Application.UnLock();
        }

        void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["online"] = (int)Application["online"] - 1;
            Application.UnLock();
        }
    }
}