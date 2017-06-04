<%@ page language="VB" autoeventwireup="true" inherits="frmLogin, App_Web_f1gcchh3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Varela+Round"/>

<link href="Content/BootFinal.css" rel="stylesheet" />
        <link href="Content/bootstrap-responsive.css" rel="stylesheet" />
    <link rel="icon" type="image/png" href="images/security.png"/>  
        <script src="~/Scripts/bootstrap.js"></script>
</head>
  <body>
      <div class="row-fluid">
          <div class="span11"></div>
          <div class="span11"></div>
    <div class="span12">
        <div class="span8" style="margin-left:6%; background-image: url('Images/Manternimiento_linea.png');" > 
            <div class="span7" style="margin-right:20%;margin-left:20%;"> <div class="span11"></div>
         <div class="span11"></div>
                </div>
            <div class="span11">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
            <div class="span11"></div>
            </div>
                 <div class="span4" style="padding:5%;
background: -moz-linear-gradient(top, #f9fcf7 0%, #f5f9f0 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f9fcf7), color-stop(100%,#f5f9f0)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, #f9fcf7 0%,#f5f9f0 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, #f9fcf7 0%,#f5f9f0 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, #f9fcf7 0%,#f5f9f0 100%); /* IE10+ */
background: linear-gradient(to bottom, #f9fcf7 0%,#f5f9f0 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f9fcf7', endColorstr='#f5f9f0',GradientType=0 ); /* IE6-9 */
border-radius: 4px;
	
-webkit-box-shadow: 0px -1px 5px rgba(50, 50, 50, 0.75);
	
-moz-box-shadow:    0px -1px 5px rgba(50, 50, 50, 0.75);
	
box-shadow:         0px -1px 5px rgba(50, 50, 50, 0.75);
	
padding:2%;
	
">
                     <div class="span11">
                          <img src="Images/logo-mapre.png" /></div> 
                     <form  runat="server" class="form-signin" role="form">
 
          <asp:Login ID="Login1" runat="server" OnAuthenticate="ValidateUser">
              <LayoutTemplate>
                  <table style="border-collapse:collapse; margin-bottom: 0px;">
                      <tr>
                          <td>
                              <table>
                                  <tr>
                            
                                      <td>
                                          <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Usuario:</asp:Label>
                                      </td>
                            
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:TextBox ID="UserName" placeholder="Escriba su Cuenta"  class="form-control"  runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="form-control">Contraseña:</asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                     
                                      <td>
                                          <asp:TextBox ID="Password" runat="server" class="form-control" placeholder="Escribar su Clave" TextMode="Password"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." />
                                      </td>
                                  </tr>
                                  <tr>
                                      <td style="color:Red;">
                                          <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:Button ID="LoginButton" class="btn btn-lg btn-primary" type="submit" runat="server" CommandName="Login" Text="Inicio de sesión" ValidationGroup="Login1" OnClick="LoginButton_Click" />
                                          <br />
                                          <br />
                                          <br />
                                          <br />
                                          <br />
                                          <br />
                                          <br />
                                          <br />
                                          <br />
                                          <br />
                                      </td>
                                  </tr>
                              </table>
                          </td>
                      </tr>
                  </table>
              </LayoutTemplate>
          </asp:Login>
      </form>
   </div>    
</div>

    </div>  
        
        
        
         <div class="span11"></div>   <div class="span11"></div>   <div class="span11"></div>   <div class="span11"></div>   <div class="span11"></div>   <div class="span11"></div>   <div class="span11"></div>   <div class="span11"></div>

      </body>
</html>
