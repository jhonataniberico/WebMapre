<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="frmAlertaInspeccionesTecnicas, App_Web_k5hroeaa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h4>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Images/excel.png" Width="48px" />
    </h4>
    <h4>Alerta de Inspecciones Tecnicas</h4>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idDetalleMant" CssClass="table table-hover table-striped" AllowSorting="True" EnableTheming="True">
        <Columns>
            <asp:BoundField DataField="idDetalleMant" HeaderText="idMant" Visible="False" />
            <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" />
            <asp:BoundField DataField="nMarca" HeaderText="Referencia" ReadOnly="True" />
            <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" />
            <asp:BoundField DataField="nEstado" HeaderText="Estado" ReadOnly="True" />
            <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" />
            <asp:TemplateField HeaderText="Obs" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="txtObs" runat="server" Height="47px" Text='<%# Bind("detalleObs") %>' TextMode="MultiLine" Width="175px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("detalleObs") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mecanico" Visible="False">
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
            <asp:TemplateField ShowHeader="False" Visible="False">
                <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                    <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton4" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="validacion" HeaderText="Confirmacion" />
        </Columns>
        <HeaderStyle BackColor="#384a2793" />
        <SortedAscendingCellStyle BorderStyle="Outset" />
    </asp:GridView>
</asp:Content>

