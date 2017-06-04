<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="FrmConsolidacionServicios, App_Web_aofv2bk4" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 16px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style5 {}
        .auto-style6 {
            height: 29px;
        }
        .auto-style10 {
            height: 48px;
        }
        .auto-style12 {
            height: 29px;
            width: 291px;
        }
        .auto-style14 {
            height: 29px;
            width: 171px;
        }
        .auto-style15 {
            height: 36px;
            width: 171px;
        }
        .auto-style16 {
            height: 36px;
            width: 291px;
        }
        .auto-style17 {
            height: 36px;
        }
        .auto-style19 {
            height: 26px;
        }
        .auto-style20 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="span4" style="overflow:scroll;">
        <h4 style="text-align:center">
            <asp:Label ID="lblFecha0" runat="server" CssClass="text-center" Text="Fecha"></asp:Label>
            <asp:TextBox ID="txtConsFecha" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date"></asp:TextBox>
        </h4>
        <h4 style="text-align:center">Ordenes Trabajo Abiertas</h4>
        <asp:GridView ID="GridView3" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="CodOT" Width="341px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" >
                <ItemStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" Visible="True"/>
                <asp:BoundField DataField="placa" HeaderText="Placa" Visible="False" />
                <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" />
                <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" Visible="False" />
                <asp:BoundField DataField="nTipoOT" HeaderText="Tipo OT" Visible="False"/>
                <asp:BoundField DataField="nEstadoOT" HeaderText="Estado" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="codCheckin" HeaderText="codCheckin" Visible="False" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton16" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/travel_bus.png" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" Visible="False">
                    <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton17" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                        <asp:ImageButton ID="ImageButton18" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton19" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BorderStyle="Outset" BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <hr />
        <h4 style="text-align:center;">Ordenes Trabajo Cerradas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
        <asp:GridView ID="GridView5" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="CodOT" Width="342px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" >
                <ItemStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="placa" HeaderText="Placa" Visible="False" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" Visible="True"/>
                <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" />
                <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" Visible="False" />
                <asp:BoundField DataField="nTipoOT" HeaderText="Tipo OT" Visible="False"/>
                <asp:BoundField DataField="nEstadoOT" HeaderText="Estado" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="codCheckin" HeaderText="codCheckin" Visible="False" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton15" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/CANDADO32.png" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" Visible="False">
                    <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton12" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                        <asp:ImageButton ID="ImageButton13" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton14" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BorderStyle="Outset" BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </div>
    <br />
        <div class="span8" style="width:63%;">
     <h4 style="text-align:center">CONSOLIDADO DE SERVICIOS<asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
            </h4>
         <div class="span12">


               
       <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ShowCollapseButton="true" Width="649px" HeaderText="GENERACION DE REQUERIMIENTOS">
           <PanelCollection>
<dx:PanelContent runat="server">
    <table style="width:100%;">
        <tr>
            <th class="auto-style15" style="background-color: #660066; color: #FFFFFF">Unidad:&nbsp;
                <asp:Label ID="txtUnidad" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </th>
            <td class="auto-style16" style="background-color: #660066; color: #FFFFFF">&nbsp;OT:
                <asp:Label ID="lblCodOt" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COD:<asp:Label ID="lblcheckin" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style17" style="background-color: #660066; color: #FFFFFF">Fecha :
                <asp:Label ID="lblFecha" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;
                <br />
            </td>
        </tr>
        <tr>
            <th class="auto-style14">Detalle
                <br />
                Solicitud :</th>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtObs" runat="server" Height="41px" TextMode="MultiLine" Width="229px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:ImageButton ID="ibGenerarRequerimiento" runat="server" ImageUrl="~/Images/add24.png" ValidationGroup="IngresoTrabajo" />
                <asp:Label ID="Label6" runat="server" Text="Agregar"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="dgvDetalleRequerimientos" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-hover table-striped" DataKeyNames="CodRequerimiento" EnableTheming="True" ForeColor="#333333" GridLines="None" Width="617px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CodRequerimiento" HeaderText="NºReq." />
            <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" ReadOnly="True" />
            <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True">
            <ItemStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="obsRequerimiento" HeaderText="Detalle Req." />
            <asp:BoundField DataField="nEstadoRequerimiento" HeaderText="Estado" ReadOnly="True" />
            <asp:BoundField DataField="HoraAtendido" DataFormatString="{0:T}" HeaderText="Hr.Solicitud" ReadOnly="True" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton20" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/compra2_32.png" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False" Visible="False">
                <EditItemTemplate>
                    &nbsp;<asp:ImageButton ID="ImageButton21" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                    <asp:ImageButton ID="ImageButton22" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton23" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" BorderStyle="Outset" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
               </dx:PanelContent>
</PanelCollection>
    </dx:ASPxRoundPanel>


               
       <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ShowCollapseButton="true" Width="649px" Height="354px" HeaderText="SERVICIOS" Collapsed="True">
           <PanelCollection>
<dx:PanelContent runat="server"><br />
    <br />
               </dx:PanelContent>
</PanelCollection>
    </dx:ASPxRoundPanel>
  

               
       <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" Width="649px" HeaderText="SERVICIOS CONSOLIDADOS">
           <PanelCollection>
<dx:PanelContent runat="server">
    <table style="width:100%;">
        <tr>
            <th class="auto-style1">Servicios Consolidados el dia&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <br />
            </th>
        </tr>
    </table>
    <br />
    <asp:GridView ID="dgvDetalleServiciosConsolidados" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table" DataKeyNames="codOt" Font-Size="Small" Height="137px" Width="617px">
        <Columns>
            <asp:BoundField DataField="CodRequerimiento" HeaderText="NºReq." />
            <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="codUnidad" HeaderText="Unidad" />
            <asp:BoundField DataField="codOt" HeaderText="codOt" Visible="False">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="obsRequerimiento" HeaderText="obsRequerimiento">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nEstadoRequerimiento" HeaderText="Estado" />
            <asp:BoundField DataField="HoraAtendido" DataFormatString="{0:T}" HeaderText="Hr. Solicitud" />
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Images/CANDADO32.png" DeleteText="" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <dx:ASPxPopupControl ID="ASPxPopupControl2" runat="server" HeaderText="Consolidacion de Requerimientos" Height="394px" Theme="MetropolisBlue" Width="474px">
        <FooterStyle HorizontalAlign="Center" />
        <HeaderStyle HorizontalAlign="Center" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <a class="brand" href="default.aspx">
                <img></img></a><br /><br /><table style="width: 100%;">
                    <tr>
                        <th class="auto-style19" colspan="3" style="color: #FFFFFF; background-color: #660066">Registro de Servicios</th>
                    </tr>
                    <tr>
                        <th class="auto-style20">Fecha&nbsp;
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        </th>
                        <td class="auto-style20" colspan="2">&nbsp;Unidad :&nbsp;
                            <asp:Label ID="txtUnidad2" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; OT:&nbsp;&nbsp;
                            <asp:Label ID="lblCodOt2" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COD:
                            <asp:Label ID="lblcheckin2" runat="server" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style2">Requerimiento</th>
                        <td class="auto-style6" colspan="2">
                            <asp:Label ID="txtRequerimiento" runat="server" Text="Label"></asp:Label>
                            <asp:TextBox ID="txtObsRequerimiento" runat="server" Height="41px" TextMode="MultiLine" Width="229px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style2">Proveedor</th>
                        <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <dx:ASPxComboBox ID="LstProveedor" runat="server" Font-Size="Larger" Height="46px" Theme="MetropolisBlue" Width="314px">
                            </dx:ASPxComboBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style10">Tipo Doc.</th>
                        <td class="auto-style10" colspan="2">
                            <asp:ListBox ID="lstTipoDocumento" runat="server" Height="30px" Width="169px"></asp:ListBox>
                            Codigo Doc.<asp:TextBox ID="txtCodigoFac" runat="server" Height="21px" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style19" colspan="3" style="font-size: -8px; background-image: none; background-color: #660066; color: #FFFFFF;">Registro de Servicios</th>
                    </tr>
                    <tr>
                        <th>Tipo</th>
                        <td class="auto-style5" colspan="2">Servicios
                            <asp:ImageButton ID="ibservicio" runat="server" ImageUrl="~/Images/check-circle3.png" ValidationGroup="IngresoTrabajo" />
                            &nbsp;&nbsp; Repuestos
                            <asp:ImageButton ID="ibrepuestos" runat="server" ImageUrl="~/Images/check-circle3.png" ValidationGroup="IngresoTrabajo" />
                            &nbsp;<dx:ASPxComboBox ID="lstServicio" runat="server" Font-Size="Larger" Height="46px" Theme="MetropolisBlue" Width="314px">
                            </dx:ASPxComboBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Cantidad</th>
                        <td class="auto-style5">&nbsp;
                            <asp:TextBox ID="txtCantidad" runat="server" Width="91px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Costo
                            <asp:TextBox ID="txtCosto" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:ImageButton ID="ibGuardar" runat="server" ImageUrl="~/Images/add24.png" ValidationGroup="IngresoTrabajo" />
                            <asp:Label ID="Label1" runat="server" Text="Agregar"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="dgvDetalleArticuloRequermiento" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table" DataKeyNames="id" Font-Size="Small" Height="137px" Width="619px">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" Visible="False" />
                                <asp:BoundField DataField="CodRequerimiento" HeaderText="NºREQ:">
                                <ItemStyle Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="codOt" HeaderText="Ot" Visible="False" />
                                <asp:BoundField DataField="razonSocial" HeaderText="RazonSocial" Visible="False">
                                <ItemStyle Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="codServicio" HeaderText="Codigo" Visible="False">
                                <ItemStyle Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DescServicio" HeaderText="DescServicio" />
                                <asp:BoundField DataField="cantidad" HeaderText="Cantidad" Visible="False" />
                                <asp:BoundField DataField="Um" HeaderText="MED" />
                                <asp:BoundField DataField="costo" HeaderText="Costo" />
                                <asp:BoundField DataField="CostoTotal" HeaderText="CostoTotal" />
                                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Images/delete24x24.png" DeleteText="" ShowDeleteButton="True" />
                            </Columns>
                            </asp:GridView>
                        </th>
                    </tr>
                </table>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <br />
               </dx:PanelContent>
</PanelCollection>
    </dx:ASPxRoundPanel>

                  <asp:Label ID="lblkmInter" runat="server" Text="Label"></asp:Label>

                  <br />
             <br />
             <br />
             <br />
             <br />
             <br />

                  <br />

                  </div>
</div>
        </asp:Content>

