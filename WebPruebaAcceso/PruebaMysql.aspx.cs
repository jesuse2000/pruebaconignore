using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.Data;


namespace WebPruebaAcceso
{
    public partial class PruebaMysql : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        private MySqlConnection conexion(ref string mensaje)
        {
            MySqlConnection cnMy = new MySqlConnection();
            //cnMy.ConnectionString= "Server = localhost:84; Database = escualaprof; Uid = root;";
            cnMy.ConnectionString = "Server=localhost; Port=3306; Database=escuelaprof; Uid=root; Pwd=;";

            try
            {
                cnMy.Open();
                mensaje = "Funciono correctamente";
            }
            catch (Exception h)
            {
                mensaje = "Error: " + h.Message;
                cnMy = null;

            }

            return cnMy;
        }

        protected void btnPruebaAcceso_Click(object sender, EventArgs e)
        {
            MySqlConnection cnMy = new MySqlConnection();
            //cnMy.ConnectionString= "Server = localhost:84; Database = escualaprof; Uid = root;";
            cnMy.ConnectionString = "Server=localhost; Port=3306; Database=escuelaprof; Uid=root; Pwd=;";

            try
            {
                cnMy.Open();
                TextBox1.Text = "Funciono correctamente";
            }
            catch (Exception h)
            {
                TextBox1.Text = "Error: " + h.Message;

            }
        }

        protected void btnConsultaMaterias_Click(object sender, EventArgs e)
        {
            MySqlConnection cnNueva = null;
            MySqlCommand carrito = null;
            DataSet contenedor = null;
            MySqlDataAdapter trailer = null;
            string query = "select * from materia;";
            string m = "";
            cnNueva = conexion(ref m);

            if (cnNueva != null)
            {
                carrito = new MySqlCommand();
                carrito.CommandText = query;
                carrito.Connection = cnNueva;
                trailer = new MySqlDataAdapter();
                trailer.SelectCommand = carrito;
                contenedor = new DataSet();
                try
                {
                    trailer.Fill(contenedor);
                    TextBox1.Text = "consulta correcta";
                    GridView1.DataSource = contenedor.Tables[0];
                    GridView1.DataBind();
                }
                catch (Exception w)
                {
                    TextBox1.Text = "error: " + w.Message;
                    throw;
                }

                cnNueva.Close();
                cnNueva.Dispose();
            }
            else
            {
                TextBox1.Text = m;
            }
        }
    }
}