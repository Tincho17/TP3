using System;
using System.Data.SqlClient;

namespace TP3
{
    public partial class ListarRegistrosContables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string idBuscar = txtBuscarId.Text.Trim();
            if (!int.TryParse(idBuscar, out int id))
            {
                lblMensaje.Text = "Ingrese un ID válido (solo números).";
                return;
            }

            if (string.IsNullOrEmpty(idBuscar))
            {
                lblMensaje.Text = "Ingrese un ID válido para buscar.";
                return;
            }

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(s))
            {
                con.Open();
                string query = "SELECT id, idCuenta, monto, tipo FROM RegistrosContables WHERE id = @id";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@id", idBuscar);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtId.Text = reader["id"].ToString();
                            txtIdCuenta.Text = reader["idCuenta"].ToString();
                            txtMonto.Text = reader["monto"].ToString();
                            rbtnTipo.SelectedValue = reader["tipo"].ToString();
                            lblMensaje.Text = "";
                        }
                        else
                        {
                            txtId.Text = "";
                            txtIdCuenta.Text = "";
                            txtMonto.Text = "";
                            rbtnTipo.SelectedIndex = -1;
                            lblMensaje.Text = "No se encontró ningún registro contable con el ID proporcionado.";
                        }
                    }
                }
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string id = txtId.Text.Trim();
            string nuevoMonto = txtMonto.Text.Trim();
            string nuevoTipo = rbtnTipo.SelectedValue;

            if (string.IsNullOrEmpty(id) || string.IsNullOrEmpty(nuevoMonto))
            {
                lblMensaje.Text = "Los campos ID y Monto no pueden estar vacíos.";
                return;
            }

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(s))
            {
                con.Open();
                string query = "UPDATE RegistrosContables SET monto = @monto, tipo = @tipo WHERE id = @id";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@monto", nuevoMonto);
                    cmd.Parameters.AddWithValue("@tipo", nuevoTipo);
                    cmd.ExecuteNonQuery();
                    lblMensaje.Text = "Registro contable actualizado correctamente.";
                }
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string id = txtId.Text.Trim();

            if (string.IsNullOrEmpty(id))
            {
                lblMensaje.Text = "El campo ID no puede estar vacío.";
                return;
            }

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(s))
            {
                con.Open();
                string query = "DELETE FROM RegistrosContables WHERE id = @id";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMensaje.Text = "Registro contable eliminado correctamente.";
                        txtId.Text = "";
                        txtIdCuenta.Text = "";
                        txtMonto.Text = "";
                        rbtnTipo.SelectedIndex = -1;
                    }
                    else
                    {
                        lblMensaje.Text = "No se encontró ningún registro contable con el ID proporcionado.";
                    }
                }
            }
        }
    }
}
