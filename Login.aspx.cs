using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;
using System.Drawing;
using System.Text;

namespace ADS_Proyecto_Final
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "davidf98" && TextBox2.Text == "AleF1585")
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);
            }
            else
            {

            }
        }
    }
}