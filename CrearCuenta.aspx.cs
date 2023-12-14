
using System;
using System.Data.SqlClient;

namespace TP3
{
    public partial class CrearCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            string descripcion = txtDescripcion.Text.Trim();

            if (string.IsNullOrEmpty(descripcion))
            {
                lblMensaje.Text = "La descripción no puede estar vacía";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Visible = true;
                return;
            }

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;

            using (SqlConnection con = new SqlConnection(s))
            {
                con.Open();
                string query = "INSERT INTO Cuentas (descripcion) VALUES (@descripcion)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@descripcion", descripcion);
                    cmd.ExecuteNonQuery();
                }
            }

            lblMensaje.Text = "Cuenta agregada correctamente";
            lblMensaje.ForeColor = System.Drawing.Color.Green;
            lblMensaje.Visible = true;
        }

    }
}
