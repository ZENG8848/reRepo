using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace reCruit.Center
{
    public partial class personInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Welcome to the User Center!";
            //Label2.Text = Session["userName"];
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("cvIfno.aspx");//跳转到我的简历页面，完善简历内容
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("recuit.aspx");//跳转到招聘页面，进行招聘
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("applyInfo.aspx");//跳转到已投递简历页面，查看自己投递过的岗位
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("showInfo.aspx");//跳转到招聘结果公示页面，查看自己是否被录取
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userControl.aspx");//修改用户个人信息
        }
                protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");//登出，跳转回登陆页面
        }

    }
}