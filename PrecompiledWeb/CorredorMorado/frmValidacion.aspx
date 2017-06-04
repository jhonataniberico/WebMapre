<%@ page language="VB" autoeventwireup="false" inherits="frmValidacion, App_Web_5jd5nx0l" masterpagefile="Site.master" enableeventvalidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 25px;
        }
    </style>
 
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
       <div class="tabbable"> <!-- Only required for left/right tabs -->
    <ul class="nav nav-tabs">
    <li class="active" ><a href="#tab1" data-toggle="tab">Validacion de Mantenimiento</a></li>
          
    </ul>
    <div class="tab-content">
          <div class="tab-pane active " id="tab1">
     <asp:Label ID="Label3" runat="server" Text="Fecha"></asp:Label>   <asp:TextBox ID="txtConsultaFecha" runat="server" AutoPostBack="True" TextMode="Date"></asp:TextBox>
 
    <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Images/excel.png" Width="48px" />
     <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idDetalleMant" CssClass="table table-hover table-striped" AllowSorting="True" EnableTheming="True">
                <Columns>
                    <asp:BoundField DataField="idDetalleMant" HeaderText="idMant" />
                    <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" />
                    <asp:BoundField DataField="nMarca" HeaderText="Referencia" ReadOnly="True" />
                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" />
                    <asp:BoundField DataField="nEstado" HeaderText="Estado" ReadOnly="True" />
                    <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" />
                    <asp:BoundField DataField="nPersona" HeaderText="Responsable" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Confirmacion">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlConfirmacion" runat="server">
                                <asp:ListItem Value="1">Sin Confirmar</asp:ListItem>
                                <asp:ListItem Value="2">Realizado</asp:ListItem>
                                <asp:ListItem Value="3">No Realizado</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("validacion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Obs" ValidateRequestMode="Enabled">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtObsv" runat="server"  Text='<%# Bind("detalleObs") %>' TextMode="MultiLine" ValidateRequestMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator id="rfvObsV" ControlToValidate="txtObsv" runat ="server" ErrorMessage="Ingrese la Observacion" ForeColor="red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("detalleObs") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton7" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                            <asp:ImageButton ID="ImageButton9" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton10" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#384a2793" />
                <SortedAscendingCellStyle BorderStyle="Outset" />
            </asp:GridView>
    </div>
 
    </div>
  </div>
     
   
            </asp:Content>