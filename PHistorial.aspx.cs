using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ADS_Proyecto_Final
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ale\source\repos\ADS Proyecto Final\App_Data\BDHistorial.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from THistorial", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            this.GridView1.DataSource = (dt);
            GridView1.DataBind();
        }
    }
}