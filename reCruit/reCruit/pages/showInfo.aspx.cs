using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace reCruit.pages
{
    public partial class showInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //新建一个数据集，只有一张3列的表，用来放录用者的姓名、职位
            DataSet myDataSet = new DataSet();
            DataTable myTable = new DataTable("employment");
            DataColumn myCol1 = new DataColumn("name", System.Type.GetType("System.String"));
            DataColumn myCol2 = new DataColumn("position", System.Type.GetType("System.String"));

            myTable.Columns.Add(myCol1);
            myTable.Columns.Add(myCol2);

            string tel;//用来存用户手机号

            if (Convert.ToString(Session["employNo"]) != "")//当session对象不为空时
            {
                string employNo = Convert.ToString(Session["employNo"]);
                if (Request.Cookies[employNo] != null)
                {
                    if (Request.Cookies[employNo].HasKeys)//判断这个cookie下有没有子键
                    {
                        foreach (string ckey in Request.Cookies[employNo].Values)//遍历employNo里的键值
                        {
                            if (ckey.Substring(0, 2) == "te")//当键值存的是用户的电话号时
                            {
                                tel = Request.Cookies[employNo].Values[ckey];//取用户的电话号
                                if (tel != "")
                                {
                                    DataRow myRow = myTable.NewRow();//创建一行
                                    myRow[0] = Request.Cookies[employNo].Values["tel" + tel];
                                    myRow[1] = Request.Cookies[employNo].Values["position" + tel];

                                    myTable.Rows.Add(myRow);
                                }
                            }
                        }
                    }
                }
            }
            myDataSet.Tables.Add(myTable);
            GridView1.DataSource = myDataSet.Tables["cart"];
            GridView1.DataBind();
        }
    }

       
         
    
}