<%@ page language="VB" autoeventwireup="true" enableeventvalidation="false" inherits="frmUnidad, App_Web_hd3brtal" masterpagefile="Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 41px;
        }
    </style>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

 
   
   
       <div class="span12" style="text-align:center;   background: #a90329; /* Old browsers */
background: -moz-linear-gradient(top,  #a90329 0%, #8f0222 44%, #6d0019 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#a90329), color-stop(44%,#8f0222), color-stop(100%,#6d0019)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #a90329 0%,#8f0222 44%,#6d0019 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #a90329 0%,#8f0222 44%,#6d0019 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #a90329 0%,#8f0222 44%,#6d0019 100%); /* IE10+ */
background: linear-gradient(to bottom,  #a90329 0%,#8f0222 44%,#6d0019 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a90329', endColorstr='#6d0019',GradientType=0 ); color: #FFFFFF;">

           MAESTRO PROVEEDORES</div>
    <div class="span12">
        <div class="span1"></div>
        <div class="span10">
       
            <div></div>
            <table style="width:100%;">
                <tr>
                    <th>Codigo</th>
                    <td>
                        <asp:Label ID="txtCodigoP" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                    <td>
                 
                           
                        <br />
                            <br />
                    </td>
                </tr>
                <tr>
                    <th class="auto-style2">Rzon Social</th>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtRzSo" runat="server" Width="300px" Font-Size="X-Small"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtRzSo" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <th>RUC</th>
                    <td>
                        <asp:TextBox ID="txtRuc" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="IngresoProveedor"  ControlToValidate="txtRuc" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <th>Direccion</th>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"  ValidationGroup="IngresoProveedor" ControlToValidate="txtDireccion" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <th>Provincia</th>
                    <td>
                        <asp:DropDownList ID="ddlProvincia" runat="server">
                            <asp:ListItem>LIMA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <th>Departamento</th>
                    <td>
                        <asp:DropDownList ID="ddlDepartamento" runat="server">
                            <asp:ListItem>LIMA</asp:ListItem>
                            <asp:ListItem>ANCASH</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <th>Mail</th>
                    <td>
                        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtMail" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                 
                           
                        &nbsp;</td>
                </tr>
                <tr>
                    <th class="auto-style1">Telefono</th>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtTelefono" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1">
                            &nbsp;</td>
                </tr>
                <tr>
                    <th class="auto-style1">Contacto</th>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtContacto" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtContacto" ErrorMessage="Escriba Codigo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1">
                            &nbsp;</td>
                </tr>
                <tr>
                    <th class="auto-style1">Telefono Contacto</th>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtTelefono2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtTelefono2" ErrorMessage="Escriba Codigo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1">
                        <asp:ImageButton ID="ibNUEVO" runat="server" ImageUrl="~/Images/new.png" Height="24px" Width="24px"/>
                        <asp:Label ID="Label4" runat="server" Text="Nuevo"></asp:Label></td>
                </tr>
                <tr>
                    <th class="auto-style1">Cuenta de Deposito S/</th>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtCuentaS" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtCuentaS" ErrorMessage="Escriba Codigo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1">
                 
                           
                        <asp:ImageButton ID="ibAGREGAR" ValidationGroup="IngresoProveedor" runat="server" ImageUrl="~/Images/add24.png"/>
                        <asp:Label ID="Label1" runat="server" Text="Agregar"></asp:Label></td>
                </tr>
                <tr>
                    <th class="auto-style1">Cuenta de Deposito $</th>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtcuentaD" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtcuentaD" ErrorMessage="Escriba Codigo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1">
                            <asp:ImageButton ID="idModificar" runat="server" ImageUrl="~/Images/Save-icon24.png"/>
                        <asp:Label ID="Label2" runat="server" Text="Guardar"></asp:Label></td>
                </tr>
                </table>
       

        </div>

    </div>

         <div class="span12" style="text-align:center;   background: #a90329; /* Old browsers */
background: -moz-linear-gradient(top,  #a90329 0%, #8f0222 44%, #6d0019 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#a90329), color-stop(44%,#8f0222), color-stop(100%,#6d0019)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #a90329 0%,#8f0222 44%,#6d0019 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #a90329 0%,#8f0222 44%,#6d0019 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #a90329 0%,#8f0222 44%,#6d0019 100%); /* IE10+ */
background: linear-gradient(to bottom,  #a90329 0%,#8f0222 44%,#6d0019 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a90329', endColorstr='#6d0019',GradientType=0 ); /* IE6-9 */">
       

       </div>



  <div class="span12">
          <div class="span1"></div>
        <div class="span10" style="max-height:400px;overflow:scroll"> 
                   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/excel.png" Height="24px" />
            <asp:GridView ID="GridView2"
                     runat="server"
                     CellPadding="4"
                               CssClass="table table-hover" Font-Size="Small" AutoGenerateColumns="False"
                 DataKeyNames="codProveedor">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/check-circle2.png" CommandName="select" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="codProveedor" HeaderText="CodProveedor">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="razonSocial" HeaderText="Razon Social">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="ruc" HeaderText="Ruc">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="direccion" HeaderText="Direccion" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="provincia" HeaderText="Provincia" />
                <asp:BoundField DataField="departamento" HeaderText="Departamento" />
                <asp:BoundField DataField="mail" HeaderText="Mail" />
                <asp:BoundField DataField="telefono" HeaderText="Telefono" />
                <asp:BoundField DataField="contacto" HeaderText="Contacto" Visible="False" />
                <asp:BoundField DataField="telecontanto" HeaderText="telecontanto" Visible="False" />
                <asp:BoundField DataField="CuentaBancariaS" HeaderText="CuentaBancariaS" Visible="False" />
                <asp:BoundField DataField="CuentaBancariaD" HeaderText="CuentaBancariaD" Visible="False" />
            </Columns>
            </asp:GridView>
                </div>
             
           
   </div>



                            
</asp:Content>