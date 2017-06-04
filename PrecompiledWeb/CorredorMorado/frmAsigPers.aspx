<%@ page language="VB" autoeventwireup="false" enableeventvalidation="false" inherits="frmAsigPers, App_Web_hd3brtal" masterpagefile="Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
       <div class="tabbable"> <!-- Only required for left/right tabs -->
    <ul class="nav nav-tabs">
    <li class="active"><a href="#tab1" data-toggle="tab">Asignacion de Personal</a></li>
          
    </ul>
    <div class="tab-content">
    <div class="tab-pane active" id="tab1">
         <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Images/excel.png" Width="48px" />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idDetalleMant" CssClass="table table-hover table-striped" AllowSorting="True" EnableTheming="True">
                <Columns>
                    <asp:BoundField DataField="idDetalleMant" HeaderText="idMant" Visible="False" />
                    <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" />
                    <asp:BoundField DataField="nMarca" HeaderText="Referencia" ReadOnly="True" Visible="false"/>
                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" Visible="false"/>
                    <asp:BoundField DataField="nEstado" HeaderText="Estado" ReadOnly="True" />
                    <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Obs" Visible="false">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtObs0" runat="server"  Text='<%# Bind("detalleObs") %>' TextMode="MultiLine" Width="175px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("detalleObs") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mecanico">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlMecanico" runat="server" DataSourceID="MecanicoLnq" DataTextField="nPersona" DataValueField="nPersona" Width="144px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="MecanicoLnq" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (nPersona)" TableName="Personal">
                            </asp:LinqDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nPersona") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                            <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton4" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
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