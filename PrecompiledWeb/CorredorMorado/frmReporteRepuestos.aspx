<%@ page language="VB" autoeventwireup="true" inherits="frmReporteRepuestos, App_Web_5jd5nx0l" masterpagefile="Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 <style type="text/css">
     table{
   text-align:"center";
   margin:0,auto;
     }
     .span6 {
     background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #e5e5e5 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#e5e5e5)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#e5e5e5 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#e5e5e5',GradientType=0 ); /* IE6-9 */
border-radius: 4px;
	
-webkit-box-shadow: 0px -1px 5px rgba(50, 50, 50, 0.75);
	
-moz-box-shadow:    0px -1px 5px rgba(50, 50, 50, 0.75);
	
box-shadow:         0px -1px 5px rgba(50, 50, 50, 0.75);
	
padding:1%;
margin:1%;

     }
 </style>
    
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Consulta por Dia</h3>
    
            <asp:TextBox ID="txtFecha1" runat="server" Width="140px" TextMode="Date"></asp:TextBox>
   
<asp:TextBox ID="txtFecha2" TextMode="Date" runat="server"></asp:TextBox>
   
            <asp:ImageButton ID="ibBuscar" runat="server" Height="48px" ImageUrl="~/Images/search.png" Width="48px" />
    
            <asp:ImageButton ID="imgExcel" runat="server" Height="48px" ImageUrl="~/Images/Excel.png" Width="48px" />
        <br/>
            <div class="span6" style=" background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #e5e5e5 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#e5e5e5)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#e5e5e5 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#e5e5e5',GradientType=0 ); /* IE6-9 */
border-radius: 4px;
	
-webkit-box-shadow: 0px -1px 5px rgba(50, 50, 50, 0.75);
	
-moz-box-shadow:    0px -1px 5px rgba(50, 50, 50, 0.75);
	
box-shadow:         0px -1px 5px rgba(50, 50, 50, 0.75);
	
padding:1%;
">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table-hover" AllowSorting="True" EnableTheming="True" PageSize="50" Font-Italic="False" Font-Size="Small" HorizontalAlign="Center" DataKeyNames="CodOT">
                <Columns>
                    <asp:BoundField DataField="CodOT" HeaderText="OT" ReadOnly="True" />
                    <asp:BoundField DataField="codUnidad" HeaderText="Unidad" ReadOnly="True" />
                    <asp:BoundField DataField="repuesto" HeaderText="Repuesto" ReadOnly="True" />
                    <asp:BoundField DataField="obs" HeaderText="Ocurrencia" Visible="False" ReadOnly="True" />
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Estado">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlEstado2" runat="server">
                                <asp:ListItem Value="1">Solicitado</asp:ListItem>
                                <asp:ListItem Value="2">Comprar</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("estadoRepuesto") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Save-icon.png" CommandName="Update" />
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Cancel" ImageUrl="~/Images/cancel.png" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Edit" ImageUrl="~/Images/edit.png" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#0099FF" />
                <SortedAscendingCellStyle BorderStyle="Outset" />
            </asp:GridView>
      
        
            
            <%--<asp:LinkButton ID="InsertarNuevo" runat="server" CommandName="insertar" Visible="False">Insertar Nuevo</asp:LinkButton>--%>
            <asp:LinqDataSource ID="lnqUnidades" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (codUnidad)" TableName="Unidad">
            </asp:LinqDataSource>
        </div>
    <div class="span6">
      
        
            
            <%--<asp:LinkButton ID="InsertarNuevo" runat="server" CommandName="insertar" Visible="False">Insertar Nuevo</asp:LinkButton>--%>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table-hover" AllowSorting="True" EnableTheming="True" PageSize="50" Font-Italic="False" Font-Size="Small" HorizontalAlign="Center" DataKeyNames="CodOT">
                <Columns>
                    <asp:BoundField DataField="CodOT" HeaderText="OT" ReadOnly="True" />
                    <asp:BoundField DataField="codUnidad" HeaderText="Unidad" ReadOnly="True" />
                    <asp:BoundField DataField="repuesto" HeaderText="Repuesto" ReadOnly="True" />
                    <asp:BoundField DataField="obs" HeaderText="Ocurrencia" Visible="False" ReadOnly="True" />
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Estado">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlEstado" runat="server">
                                <asp:ListItem Value="1">Solicitado</asp:ListItem>
                                <asp:ListItem Value="2">Comprar</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("estadoRepuesto") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/Save-icon.png" CommandName="Update" />
                            <asp:ImageButton ID="ImageButton5" runat="server" CommandName="Cancel" ImageUrl="~/Images/cancel.png" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton6" runat="server" CommandName="Edit" ImageUrl="~/Images/edit.png" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#0099FF" />
                <SortedAscendingCellStyle BorderStyle="Outset" />
            </asp:GridView>
      
        
            
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (codUnidad)" TableName="Unidad">
            </asp:LinqDataSource>

    </div>
</asp:Content>
