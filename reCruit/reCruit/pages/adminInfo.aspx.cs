using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace reCruit.Center
{
    public partial class adminInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Welcome to the Admin Center!";//欢迎来到管理员中心
            Label2.Text = Application["total"] + " ";//显示总上站人数
            Label3.Text = Application["online"] + " ";//显示当前在线人数
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("jobInfo.aspx");//跳转到岗位发布页面
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("recuitInfo.aspx");//跳转到简历查看页面
        }
    }
}