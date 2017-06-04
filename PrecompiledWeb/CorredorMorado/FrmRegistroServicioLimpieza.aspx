<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="FrmRegistroServicioLimpieza, App_Web_5jd5nx0l" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row-fluid">
        <div class="span4" style="overflow:scroll;">
            <h4 style="text-align:center">
                <asp:Label ID="lblFecha0" runat="server" CssClass="text-center" Text="Fecha"></asp:Label>
                <asp:TextBox ID="txtFechaCh" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date"></asp:TextBox>
            </h4>
            <h4 style="text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Unidad a Ejecutar</h4>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="text-center" Font-Size="Larger" Width="166px" Height="47px">
        </asp:DropDownList>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Detalle: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:textbox ID="txtObsLimpieza" runat="server" Height="59px" TextMode="MultiLine" Width="265px"></asp:textbox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:ImageButton runat="server" ValidationGroup="IngresoProveedor" ImageUrl="~/Images/CHECK_CIRCULO11.png" ID="ibGuardarRealizado"></asp:ImageButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:ImageButton runat="server" ValidationGroup="IngresoProveedor" ImageUrl="~/Images/check_red.png" ID="ibGuardarObservado"></asp:ImageButton>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Realizada&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Observada<br />
            <hr />
                <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="360px" HeaderText="Mantto de Limpieza" Theme="MetropolisBlue" ShowCollapseButton="True">
                    <GroupBoxHeaderStyle>
                        <BackgroundImage ImageUrl="~/Images/cambioaceite.png" />
                    </GroupBoxHeaderStyle>
                    <PanelCollection>
                        <dx:PanelContent runat="server">
                            <asp:GridView ID="GridView5" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-hover table-striped" DataKeyNames="codCheckin" EnableTheming="True" ForeColor="#333333" GridLines="None" Width="317px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True">
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" ReadOnly="True" />
                                    <asp:BoundField DataField="nEstadoLimpieza" HeaderText="Estado" ReadOnly="True" />
                                    <asp:BoundField DataField="placa" HeaderText="Placa" Visible="False" />
                                    <asp:BoundField DataField="costo" HeaderText="costo" ReadOnly="True" Visible="False" />
                                    <asp:BoundField DataField="codServicio" HeaderText="codServicio" Visible="False" />
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
                                <SortedAscendingCellStyle BackColor="#FDF5AC" BorderStyle="Outset" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="text-center" Font-Size="Larger" Height="47px" Visible="False" Width="166px">
                            </asp:DropDownList>
                            <br />
                            <br />
                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxRoundPanel>
        </div>
        <div class="span8" style="width:63%;">
            <h4 style="text-align:center">&nbsp;</h4>
            <div class="span12">


               
       <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ShowCollapseButton="true" Width="649px" HeaderText="Consolidado de Unidades Abastecidas" Theme="MetropolisBlue">
           <PanelCollection>
<dx:PanelContent runat="server">
    <table style="width:100%;">
        <tr>
            <th class="auto-style1"> </th>
            <td class="auto-style1">&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp; FECHA :</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="dgvDetalleArticuloRequermiento" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table" DataKeyNames="id" Font-Size="Small" Height="137px" Width="619px">
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
    <br />
    <asp:GridView ID="dgvDetalleCombustible" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" CssClass="table table-hover table-striped" DataKeyNames="id" EnableTheming="True" ForeColor="#333333" GridLines="None" Width="678px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" Visible="False" />
            <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" ReadOnly="True" />
            <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True">
            <ItemStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="placa" HeaderText="Placa" Visible="False" />
            <asp:BoundField DataField="DescServicio" HeaderText="Tipo" />
            <asp:BoundField DataField="cantidad" HeaderText="cantidad" />
            <asp:BoundField DataField="Um" HeaderText="Um" ReadOnly="True" />
            <asp:BoundField DataField="costo" HeaderText="costo" />
            <asp:BoundField DataField="CostoTotal" DataFormatString="{0:C}" HeaderText="CostoTotal" />
            <asp:BoundField DataField="KmLecturaFinal" HeaderText="KmLecturaFinal" Visible="False" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton16" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/check-circle2.png" />
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
        <SortedAscendingCellStyle BackColor="#FDF5AC" BorderStyle="Outset" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <br />
               </dx:PanelContent>
</PanelCollection>
    </dx:ASPxRoundPanel>


               
            </div>
            <div class="span12">
                <br />
                <br />
            </div>
        </div>
        <br/>
        <br />
    </div>
</asp:Content>

