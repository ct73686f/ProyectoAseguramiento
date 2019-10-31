<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoAseguramiento.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Control Ferreteria</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">

  <link rel="stylesheet" href="bootstrap/css/tablasAplicacion.css">     

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->



    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>    
</head>
<body>
    <form id="form1" runat="server">
        <div>        	
	    <br><br><br><br>
	    <div class="row">
		    <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
			    <div class="login-panel panel panel-default">
				    <div class="panel-heading">Inicio de Sesión</div>
				    <div class="panel-body">
						    <fieldset>
						    <div class="col-md-4">							
							    <div class="form-group">
								    <center>
									    <br>
									    <img class="logo" src="img/login.png" title="BH Developers" alt="BHD Logo">
								    </center>		                        		                    
							    </div>							
						    </div>
						    <div class="col-md-8">	
							    <div class="form-group">								    
                                    <asp:TextBox class="form-control" placeholder="Nombre Usuario" ID="txtNombreUsuario" runat="server"></asp:TextBox>
							    </div>                                
							    <div class="form-group">
								    <asp:TextBox class="form-control" placeholder="Contraseña Usuario" ID="txtContraseña" runat="server" type="password"></asp:TextBox>
							    </div>                                				    
                                <div class="form-group">	  
                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Iniciar Sesión" OnClick="Button1_Click"/>	                                    		
                                </div>
						    </div>
						    </fieldset>		                      					    	                        
				    </div>                       
                    <% if (blnError) { %>
                        <div class="callout callout-danger">
                          <h4>Error!</h4>

                          <p><%= error %></p>
                        </div>
                    <% } else if (!bienvenida.Equals("")) {%>
                          <div class="callout callout-success">
                          <h4>Bienvenida!</h4>
                          <p><%= bienvenida %></p>
                        </div>   
                            
                       <%         }%>
			    </div>

		    </div><!-- /.col-->
	    </div><!-- /.row -->		
    </div>
    </form>
</body>
</html>

