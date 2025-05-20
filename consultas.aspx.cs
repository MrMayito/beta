using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto_estadías
{
    public partial class consultas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Limpiar campos después de guardar (opcional)
                tbNombre.Text = "";
                tbTelefono.Text = "";
                tbMaterno.Text = "";
                tbPaterno.Text = "";
                tbCorreo.Text = "";

                // Mostrar notificación
                ClientScript.RegisterStartupScript(this.GetType(), "mostrarNotificacion",
                    "mostrarNotificacion();", true);
            }
        }
    }
}