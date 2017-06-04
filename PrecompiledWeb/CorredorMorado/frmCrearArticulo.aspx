<%@ page language="VB" autoeventwireup="false" enableeventvalidation="false" inherits="frmUnidad, App_Web_aofv2bk4" masterpagefile="Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    
     <style type="text/css">
        .auto-style1 {
            height: 41px;
        }
        .auto-style2 {
            height: 7px;
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

           MAESTRO DE REPUESTOS</div>
    <div class="span12">
        <div class="span1"></div>
        <div class="span10">
       
            <div></div>
            <table style="width:100%;">
                <tr>
                    <th class="auto-style2">Codigo</th>
                    <td class="auto-style2">
                        <asp:Label ID="TxTcodigo" runat="server" ForeColor="#660066" Text="Label"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style2">
                        <br />
                            <br />
                    </td>
                </tr>
                <tr>
                    <th class="auto-style1">Descripcion</th>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtDesc" runat="server" Width="300px" Font-Size="Small"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtDesc" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <th>Sistema</th>
                    <td>
            <asp:DropDownList ID="ddlSistema" runat="server" AutoPostBack="True">
            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="ddlSistema" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <th>Cantidad</th>
                    <td>
                        <asp:TextBox ID="txtCan" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtCan" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ibGuardar0" runat="server" ImageUrl="~/Images/new.png" Height="24px" Width="24px"/>
                        <asp:Label ID="Label4" runat="server" Text="Nuevo"></asp:Label></td>
                </tr>
                <tr>
                    <th>Um</th>
                    <td>
                        <asp:TextBox ID="txtUni" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="IngresoProveedor" ControlToValidate="txtUni" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ibAGREGAR" runat="server" ImageUrl="~/Images/add24.png" Height="24px" Width="24px"/>
                        <asp:Label ID="Label1" runat="server" Text="Agregar"></asp:Label></td>
                </tr>
                <tr>
                    <th>Costo</th>
                    <td>
                        <asp:TextBox ID="txtCost" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  ValidationGroup="IngresoProveedor" ControlToValidate="txtCost" ErrorMessage="Campo Requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                    <td>
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
        <div class="span10" style="max-height:400px;overflow:scroll;" > 
            <asp:DropDownList ID="ddlMarca" runat="server" AutoPostBack="True">
                <asp:ListItem>HYU</asp:ListItem>
                <asp:ListItem>MZB</asp:ListItem>
                <asp:ListItem>VWG</asp:ListItem>
            </asp:DropDownList><br />
                                     
            <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Images/excel.png" Height="24px" ImageAlign="NotSet" />
            <asp:GridView ID="GridView2"
                     runat="server"
              
                     CellPadding="4"
                               CssClass="table" Font-Size="Small" AutoGenerateColumns="False" DataKeyNames="CodServicio">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/check-circle2.png" CommandName="select" Width="16px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CodServicio" HeaderText="CodServicio">
                </asp:BoundField>
                <asp:BoundField DataField="DescServicio" HeaderText="DescServicio">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="CodComponente" HeaderText="CodComponente" Visible="False">
                </asp:BoundField>
                <asp:BoundField DataField="nComponente" HeaderText="Componente" Visible="False" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="um" HeaderText="Um" />
                <asp:BoundField DataField="costo" HeaderText="Costo" />
                <asp:BoundField DataField="TipoServicio" HeaderText="Tipo Servicio" Visible="False" />
            </Columns>
            </asp:GridView>
                </div>
             
           
   </div>



                            
</asp:Content>