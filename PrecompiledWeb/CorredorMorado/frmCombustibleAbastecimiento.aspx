<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="frmCombustibleAbastecimiento, App_Web_aofv2bk4" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 19px;
            width: 289px;
        }
        .auto-style3 {
            width: 306px;
        }
        .auto-style4 {
            height: 19px;
            width: 306px;
        }
        .auto-style5 {
            height: 19px;
            width: 248px;
        }
        .auto-style6 {
            width: 248px;
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
            <h4 style="text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Unidad Abastecer</h4>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="text-center" Font-Size="Larger" Width="166px" Height="47px">
            </asp:DropDownList>
            <br />&nbsp;&nbsp;&nbsp;<asp:CheckBox runat="server" AutoPostBack="True" Text="Añadir Kilometraje" ForeColor="#990000" ID="CheckBox2"></asp:CheckBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;<asp:Label ID="LETRAKM" runat="server" Text="Km_ACT"></asp:Label>
            &nbsp;
                        <asp:TextBox ID="txtKilometraje" runat="server">0</asp:TextBox>
                        <br />
            Cantidad&nbsp;<asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:ImageButton runat="server" ValidationGroup="IngresoProveedor" ImageUrl="~/Images/CHECK_CIRCULO11.png" ID="ibGuardarRealizado"></asp:ImageButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Realizada&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
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
                                <asp:BoundField DataField="nEstadoCombustible" HeaderText="Estado" ReadOnly="True" />
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
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lblCOSTO" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="lblcodServicio" runat="server"></asp:Label>
                        <asp:Label ID="lblkmiNICIAL" runat="server"></asp:Label>
                    </dx:PanelContent>
                </PanelCollection>
            </dx:ASPxRoundPanel>
        </div>
        <div class="span8" style="width:63%;">
            <div class="span12">


               
                Consolidado de Unidades Abastecidas<br />
    <asp:GridView runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id" GridLines="None" CssClass="table table-hover table-striped" EnableTheming="True" ForeColor="#333333" Width="678px" ID="dgvDetalleCombustible">
<AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
<Columns>
<asp:BoundField DataField="id" HeaderText="id" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" ReadOnly="True"></asp:BoundField>
<asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True">
<ItemStyle Font-Bold="True"></ItemStyle>
</asp:BoundField>
<asp:BoundField DataField="placa" HeaderText="Placa" Visible="False"></asp:BoundField>
<asp:BoundField DataField="DescServicio" HeaderText="Tipo"></asp:BoundField>
<asp:BoundField DataField="cantidad" HeaderText="cantidad"></asp:BoundField>
<asp:BoundField DataField="Um" HeaderText="Um" ReadOnly="True"></asp:BoundField>
<asp:BoundField DataField="costo" HeaderText="costo"></asp:BoundField>
<asp:BoundField DataField="CostoTotal" DataFormatString="{0:C}" HeaderText="CostoTotal"></asp:BoundField>
<asp:BoundField DataField="KmLecturaFinal" HeaderText="KmLecturaFinal" Visible="False"></asp:BoundField>
<asp:TemplateField ShowHeader="False"><ItemTemplate>
                    <asp:ImageButton ID="ImageButton16" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/check-circle2.png" />
                
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ShowHeader="False" Visible="False"><EditItemTemplate>
                    &nbsp;<asp:ImageButton ID="ImageButton17" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                    <asp:ImageButton ID="ImageButton18" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                
</EditItemTemplate>
<ItemTemplate>
                    <asp:ImageButton ID="ImageButton19" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
                
</ItemTemplate>
</asp:TemplateField>
</Columns>

<FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

<PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

<RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

<SortedAscendingCellStyle BackColor="#FDF5AC" BorderStyle="Outset"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
</asp:GridView>


               
            </div>
            <div class="span12">


               
                <br />
                <dx:ASPxPopupControl ID="ASPxPopupControl2" runat="server" HeaderText="MODIFICAR REGISTRO" Height="335px" Theme="MetropolisBlue" Width="451px">
                    <FooterStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ContentCollection>
<dx:PopupControlContentControl runat="server"><a class="brand" href="default.aspx">
    <img src="images/logo.png"></img></a><br />
    <br />
    <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" HeaderText="Modificar Abastecimientos Registrados" Theme="MetropolisBlue" Width="426px">
        <PanelCollection>
            <dx:PanelContent runat="server">
                &nbsp;<table style="width:98%; height: 75px;">
                    <tr>
                        <th class="auto-style5" style="background-color: #660066; color: #FFFFFF">Unidad:&nbsp;
                            <asp:Label ID="lblUnidad" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </th>
                        <td class="auto-style4" style="background-color: #660066; color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="lblFechach" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style2" style="background-color: #660066; color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="LBLcosto2" runat="server" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style6">Kilometraje
                            <asp:TextBox ID="txtKilometraje2" runat="server"></asp:TextBox>
                        </th>
                        <td class="auto-style3" style="font-weight: bold">&nbsp;&nbsp;&nbsp; Cantidad&nbsp;
                            <asp:TextBox ID="txtCantidad2" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style2" style="font-weight: bold">
                            <asp:ImageButton ID="ibActualizar" runat="server" ImageUrl="~/Images/CHECK_CIRCULO11.png" ValidationGroup="IngresoProveedor" />
                            &nbsp;&nbsp;&nbsp; Modificar </td>
                    </tr>
                </table>
                <br />
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
                        </dx:PopupControlContentControl>
</ContentCollection>
                </dx:ASPxPopupControl>
                <br />
            </div>
        </div>
        <br/>
        <br />
    </div>
</asp:Content>

