using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3
{
    public partial class CrearRegistrosContables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearRegistro_Click(object sender, EventArgs e)
        {
            string idCuenta = txtIdCuenta.Text.Trim();
            string monto = txtMonto.Text.Trim();
            string tipo = rbtnTipo.SelectedValue;

            if (string.IsNullOrEmpty(idCuenta) || string.IsNullOrEmpty(monto))
            {
                lblMensaje.Text = "Los campos ID de Cuenta y Monto no pueden estar vacíos.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Visible = true;
                return;
            }

            if (!int.TryParse(idCuenta, out int idCuentaValue) || !int.TryParse(monto, out int montoValue))
            {
                lblMensaje.Text = "Ingrese valores numéricos válidos para ID de Cuenta y Monto.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Visible = true;
                return;
            }

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;

            using (SqlConnection con = new SqlConnection(s))
            {
                con.Open();
                string query = "INSERT INTO RegistrosContables (idCuenta, monto, tipo) VALUES (@idCuenta, @monto, @tipo)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@idCuenta", idCuentaValue);
                    cmd.Parameters.AddWithValue("@monto", montoValue);
                    cmd.Parameters.AddWithValue("@tipo", tipo);
                    cmd.ExecuteNonQuery();
                }
            }

            lblMensaje.Text = "Registro contable agregado correctamente";
            lblMensaje.ForeColor = System.Drawing.Color.Green;
            lblMensaje.Visible = true;
        }
    }
}