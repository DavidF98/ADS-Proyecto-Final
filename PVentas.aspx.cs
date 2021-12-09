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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ale\source\repos\ADS Proyecto Final\App_Data\BDInventario.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnagregar_Click(object sender, EventArgs e) 
        {

            SqlDataAdapter datos = new SqlDataAdapter("SELECT Id, descripcion, vencimiento, precio FROM TInventario WHERE Id LIKE '" + this.TextBox1.Text + "'", con);
            DataTable dt = new DataTable();
            datos.Fill(dt);
            this.GridView1.DataSource = (dt);
            GridView1.DataBind();

            

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            SqlDataAdapter datos = new SqlDataAdapter("SELECT Id, descripcion, vencimiento, precio FROM TInventario WHERE Id LIKE '" + this.TextBox1.Text + "'", con);
            DataTable dt = new DataTable();
            datos.Fill(dt);
            this.GridView1.DataSource = (dt);
            GridView1.DataBind();
        }
        protected void btncompletar_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update TInventario set existencias=existencias-" + TextBox2.Text + "WHERE Id=" +this.TextBox1.Text;
            cmd.ExecuteNonQuery();
            con.Close();

            CleanControl(this.Controls);
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }


        public void CleanControl(ControlCollection controles)
        {
            foreach (Control control in controles)
            {
                if (control is TextBox)
                    ((TextBox)control).Text = string.Empty;
                else if (control is DropDownList)
                    ((DropDownList)control).ClearSelection();
                else if (control is RadioButtonList)
                    ((RadioButtonList)control).ClearSelection();
                else if (control is CheckBoxList)
                    ((CheckBoxList)control).ClearSelection();
                else if (control is RadioButton)
                    ((RadioButton)control).Checked = false;
                else if (control is CheckBox)
                    ((CheckBox)control).Checked = false;
                else if (control.HasControls())
                    //Esta linea detécta un Control que contenga otros Controles
                    //Así ningún control se quedará sin ser limpiado.
                    CleanControl(control.Controls);
            }
        }
    }
}