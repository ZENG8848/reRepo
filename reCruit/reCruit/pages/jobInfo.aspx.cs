using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace reCruit.pages
{
    public partial class jobInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //reDataBaseConnectionString
            if (!IsPostBack)
            {

                GridView1.DataSource = FillTable("select * from reInfo");
                GridView1.DataBind();

            }
        }

        private DataTable FillTable(string strSQL)
        {
            string strconn = ConfigurationManager.ConnectionStrings["reDataBaseConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(strconn))
            {
                SqlDataAdapter objDataAdapter = new SqlDataAdapter(strSQL, conn);
                DataTable dt = new DataTable();
                objDataAdapter.Fill(dt);
                return dt;

            }
        }
    }
}