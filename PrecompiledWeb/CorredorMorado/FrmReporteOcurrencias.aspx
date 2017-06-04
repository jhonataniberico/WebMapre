<%@ page language="VB" autoeventwireup="false" inherits="FrmReporteOcurrencias, App_Web_aofv2bk4" masterpagefile="Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 
    
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Consulta por Dia</h3>
    
            <asp:TextBox ID="txtFecha1" runat="server" Width="140px" TextMode="Date"></asp:TextBox>
   
<asp:TextBox ID="txtFecha2" TextMode="Date" runat="server"></asp:TextBox>
   
            <asp:ImageButton ID="ibBuscar" runat="server" Height="48px" ImageUrl="~/Images/search.png" Width="48px" />
        
            
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-hover table-striped" AllowSorting="True" EnableTheming="True" PageSize="50">
                <Columns>
                    <asp:BoundField DataField="CodOT" HeaderText="OT" />
                    <asp:BoundField DataField="codUnidad" HeaderText="codUnidad" />
                    <asp:BoundField DataField="repuesto" HeaderText="repuesto" Visible="False" />
                    <asp:BoundField DataField="obs" HeaderText="Ocurrencia" />
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                </Columns>
                <HeaderStyle BackColor="#0099FF" />
                <SortedAscendingCellStyle BorderStyle="Outset" />
            </asp:GridView>
      
            <asp:ImageButton ID="imgExcel" runat="server" Height="48px" ImageUrl="~/Images/Excel.png" Width="48px" />
        
            
            <%--<asp:LinkButton ID="InsertarNuevo" runat="server" CommandName="insertar" Visible="False">Insertar Nuevo</asp:LinkButton>--%>
            <asp:LinqDataSource ID="lnqUnidades" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (codUnidad)" TableName="Unidad">
            </asp:LinqDataSource>
        
</asp:Content>