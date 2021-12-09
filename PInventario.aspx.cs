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
    public partial class WebForm2 : System.Web.UI.Page
    {
        //En la clase del Webform creado, se hace la conexion de la base de datos al Webform.
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ale\source\repos\ADS Proyecto Final\App_Data\BDInventario.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from TInventario", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            this.GridView1.DataSource = (dt);
            GridView1.DataBind();
        }
        //Se crea la clase que hara el proceso de llanado para la base de datos al momento 
        //de hacer click en el boton enviar consulta
        protected void btn_agregar_Click(object sender, EventArgs e) 
        {

            //Se abre la base de datos usando la variable "con" que previamente
            //fue enlazada con nuestra base de datos 
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Los datos que esten en el textbox y dropdownlist, seran agregados a la base de datos
            cmd.CommandText = "insert into TInventario values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "')";
            //ExecuteNonQuery nos ayuda a crear una nueva fila y no remover la informacion 
            //previamente ingresada 
            cmd.ExecuteNonQuery();

            //Se cierra la base de datos 
            con.Close();

            CleanControl(this.Controls);


            SqlDataAdapter da = new SqlDataAdapter("select * from TInventario", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            this.GridView1.DataSource = (dt);
            GridView1.DataBind();

            if (Page.IsValid)
            {
                btn_agregar.Text = "Perfecto!";
            }

     
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

        protected void btnmodificar_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE TInventario SET descripcion='" +this.TextBox2.Text +"',vencimiento='"+this.TextBox3.Text + "',precio='"+ this.TextBox4.Text + "',existencias='"+ this.TextBox5.Text+ "' WHERE Id=" + this.TextBox1.Text + "", con);
            cmd.ExecuteNonQuery();
            con.Close();

            SqlDataAdapter da = new SqlDataAdapter("select * from TInventario", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            this.GridView1.DataSource = (dt);
            GridView1.DataBind();

            CleanControl(this.Controls);
        }
    }
}