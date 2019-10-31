using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAseguramiento
{
    public partial class Login : System.Web.UI.Page
    {
        public String error = "";
        public Boolean blnError = false;
        public String bienvenida = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String usuario = "carlos";
            String contraseña = "gaby2021"

            
            if (txtNombreUsuario.Text.Equals(usuario) && txtContraseña.Text.Equals(contraseña)){
                this.blnError = false;
                this.error = "";
                this.bienvenida = "Bienvenido al sistema " + txtNombreUsuario.Text;
            }else {
                this.blnError = true;
                this.bienvenida = "";
                this.error  = "Usuario incorrecto";
            }
        }
    }
}