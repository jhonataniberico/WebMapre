<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="FrmLiquidacionKM, App_Web_aofv2bk4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Liquidacion Kilometraje</h3>
    <div class="span4">
        <p>
            <asp:Label ID="Label3" runat="server" Text="Unidad"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="text-center" Font-Size="Larger" Width="166px" Height="47px">
            </asp:DropDownList>
        </p>
    </div>
<%--   
    <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Images/excel.png" Width="48px" />--%>
      <div class="span8">
&nbsp;<asp:TextBox ID="lblkmaceite" runat="server" Height="19px" Width="134px" BackColor="#660066" Font-Bold="True" Font-Names="Arial" ForeColor="White">   Km Recorrido</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
                        <asp:TextBox ID="txtKlimetraje" runat="server" Height="40px" Width="134px" Font-Bold="True" ForeColor="#000099" Font-Size="Medium"></asp:TextBox>
                    &nbsp;&nbsp; <asp:TextBox ID="txtFecha_KM" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date" Height="38px"></asp:TextBox>
                        &nbsp;
                            <asp:ImageButton ID="ibGuardarBitacora" ValidationGroup="IngresoProveedor" runat="server" ImageUrl="~/Images/CHECK_CIRCULO12.png"/>
                        <br />
          <asp:GridView 
                ID="GridViewLiquidacionKM" 
                runat="server"
                 AutoGenerateColumns="False"
                 CellPadding="3"
                 DataKeyNames="codUnidad"

                 CssClass="table table-hover table-striped"
                         OnSelectedIndexChanged="GridView3_SelectedIndexChanged" 
                 AllowSorting="True"
                 EnableTheming="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" GridLines="None">
              <Columns>
                  <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" />
                  <asp:BoundField DataField="placa" HeaderText="Placa" />
                  <asp:BoundField DataField="fechaLiquidacion" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" />
                  <asp:BoundField DataField="Marca" HeaderText="Ref." Visible="False" />
                  <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" ReadOnly="True" Visible="False" />
                  <asp:BoundField DataField="kmRecorrido" HeaderText="Km " />
                  <asp:TemplateField ShowHeader="False">
                      <ItemTemplate>
                          <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Select" ImageUrl="~/Images/details.png" />
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
              <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
              <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
              <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
              <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BorderStyle="Outset" BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#594B9C" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#33276A" />
          </asp:GridView>
          <div class="span12">
       <asp:DetailsView ID="DetailsView1"
                     runat="server" 
                     Height="16px" CellPadding="4" ForeColor="#333333" AutoGenerateRows="False" CssClass="table table-hover table-striped" HorizontalAlign="Center">
           <AlternatingRowStyle BackColor="White" />
           <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
           <EditRowStyle BackColor="#2461BF" />
           <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
           <Fields>
               <asp:BoundField DataField="ref" HeaderText="Referencia" />
               <asp:BoundField DataField="nCarroceria" HeaderText="Carroceria" />
               <asp:BoundField DataField="nTipoNegocio" HeaderText="Negocio" />
               <asp:BoundField DataField="nTipoUnidad" HeaderText="Tipo de Unidad" />
               <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" />
               <asp:BoundField DataField="año" HeaderText="Año" />
               <asp:BoundField DataField="asiento" HeaderText="Asientos" />
               <asp:BoundField DataField="eje" HeaderText="Ejes" />
               <asp:BoundField DataField="fecha" HeaderText="Fecha" />
               <asp:BoundField DataField="chasis" HeaderText="Chasis" />
               <asp:BoundField DataField="estado" HeaderText="Estado" />
           </Fields>
           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#384a2793" Font-Bold="True" ForeColor="White" />
           <HeaderTemplate>
               <asp:Label ID="Label16" runat="server" CssClass="text-center" EnableTheming="True" Text="DETALLE UNIDAD"></asp:Label>
           </HeaderTemplate>
           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
          </div>
    </div>
    <br />
</asp:Content>

