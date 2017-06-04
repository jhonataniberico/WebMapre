<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="FrmIngreso3, App_Web_aofv2bk4" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 293px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row-fluid">
        <div class="span4" style="overflow:scroll;">
            <h4 style="text-align:center">
                <asp:Label ID="lblFecha0" runat="server" CssClass="text-center" Text="Fecha" ForeColor="White"></asp:Label>
                <asp:TextBox ID="txtConsFecha" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date"></asp:TextBox>
            </h4>
            <h4 style="text-align:center; color: #FFFFFF;">Ordenes Trabajo Sin Registrar</h4>
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
                    <asp:BoundField DataField="placa" HeaderText="Placa" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" Visible="True"/>
                    <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" Visible="False" />
                    <asp:BoundField DataField="nTipoOT" HeaderText="Tipo OT" Visible="False"/>
                    <asp:BoundField DataField="nEstadoOT" HeaderText="Estado" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" Visible="False" />
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
            <h4 style="text-align:center; color: #FFFFFF;">Ordenes Trabajo Validadas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
            <asp:GridView ID="GridView5" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="codUnidad" Width="342px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" >
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="placa" HeaderText="Placa" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" Visible="True"/>
                    <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" Visible="False" />
                    <asp:BoundField DataField="nTipoOT" HeaderText="Tipo OT" Visible="False"/>
                    <asp:BoundField DataField="nEstadoOT" HeaderText="Estado" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" Visible="False" />
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
        <div class="span8" style="width:63%; background-color: #666666; color: #FFFFFF;">
            <h4 style="text-align:center">REGISTRO DE MANTTOS EJECUTADOS&nbsp;
                                                 </h4>
            <div class="span12" style="color: #000099; ">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Validados Registros <asp:ImageButton ID="ibValidadorYCIERREOPERATIVO" ValidationGroup="IngresoProveedor" runat="server" ImageUrl="~/Images/CHECK_NEGRO2.png"/>
                <asp:GridView ID="dgvDetalleMantto3"
                     runat="server"
              
                     CellPadding="4"
                               CssClass="table" Font-Size="Small" AutoGenerateColumns="False" DataKeyNames="idDetalleMant" Width="573px" Height="137px">
                    <Columns>
                        <asp:BoundField DataField="idDetalleMant" HeaderText="idDetalleMant" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="fecha" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy}">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="codUnidad" HeaderText="Unidad"></asp:BoundField>
                        <asp:BoundField DataField="codOt" HeaderText="codOt" Visible="False" >
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="kmIntervencion" HeaderText="kmInter" >
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="nSistema" HeaderText="nSistema" Visible="False" />
                        <asp:BoundField DataField="nEstado" HeaderText="nEstado" Visible="False" />
                        <asp:BoundField DataField="detalleObs" HeaderText="DetalleObs" />
                        <asp:BoundField DataField="nPersona" HeaderText="Tecnico" />
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Images/delete24x24.png" DeleteText="" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>

            </div>
            <div class="span12" style="color: #000099">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                  Registros Validados<br />
                <asp:GridView ID="dgvDetalleMantto2"
                     runat="server"
              
                     CellPadding="4"
                               CssClass="table" Font-Size="Small" AutoGenerateColumns="False" DataKeyNames="idDetalleMant" Width="573px" Height="137px">
                    <Columns>
                        <asp:BoundField DataField="idDetalleMant" HeaderText="idDetalleMant" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="fecha" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy}">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="codUnidad" HeaderText="Unidad"></asp:BoundField>
                        <asp:BoundField DataField="codOt" HeaderText="codOt" Visible="False" >
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="kmIntervencion" HeaderText="kmInter" >
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="nSistema" HeaderText="nSistema" Visible="False" />
                        <asp:BoundField DataField="nEstado" HeaderText="nEstado" Visible="False" />
                        <asp:BoundField DataField="detalleObs" HeaderText="DetalleObs" />
                        <asp:BoundField DataField="nPersona" HeaderText="Tecnico" />
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Images/CANDADO32.png" DeleteText="" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <br />
            </div>
        </div>
        <br/>
        <br />
        <dx:ASPxPopupControl ID="ASPxPopupControl2" runat="server" HeaderText="Registro de Mantenimiento" Height="394px" Theme="MetropolisBlue" Width="474px">
                    <FooterStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ContentCollection>
<dx:PopupControlContentControl runat="server"><a class="brand" href="default.aspx">
    <img src="Images/cambioaceite.png"></img></a><br />
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Collapsed="True" Font-Bold="True" ForeColor="Black" HeaderText="Mantenimiento &quot;Conservacion&quot;" ShowCollapseButton="True" Theme="MetropolisBlue" Width="633px">
        <GroupBoxHeaderStyle>
            <BackgroundImage ImageUrl="~/Images/cambioaceite.png" />
        </GroupBoxHeaderStyle>
        <PanelCollection>
            <dx:PanelContent runat="server">
                <table style="width:96%; height: 313px;">
                    <tr>
                        <th class="auto-style1" style="color: #FFFFFF">
                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" ForeColor="#990000" Text="Reg.Mantto Prev." />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:GridView ID="GridView6" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-hover table-striped" DataKeyNames="id" EnableTheming="True" ForeColor="#333333" GridLines="None" Height="232px" Width="241px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="Nº" ReadOnly="True">
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="nSistema" HeaderText="Mantto" ReadOnly="True" />
                                    <asp:BoundField DataField="codComponente" HeaderText="Componente" Visible="False" />
                                    <asp:BoundField DataField="codUnidad" HeaderText="Unidad" Visible="False" />
                                    <asp:BoundField DataField="Letra" HeaderText="Letra" Visible="False" />
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton20" runat="server" CommandName="Select" Height="20px" ImageUrl="~/Images/details.png" />
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
                        </th>
                        <td class="auto-style31" style="color: #333333">
                            <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" Font-Bold="True" ForeColor="#660066" HeaderText="Datos Refenciales al Mantto" Height="129px" Width="323px">
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        <br />
                                        Unidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                                        <asp:Label ID="txtUnidad" runat="server" Font-Bold="True"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Orden :&nbsp;
                                        <asp:Label ID="lblCodOt" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        Kilometraje:&nbsp;
                                        <asp:Label ID="txtKM" runat="server" Font-Bold="True"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fecha&nbsp; :&nbsp;
                                        <asp:Label ID="lblFecha" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        Tipo Mantt :
                                        <asp:Label ID="txttipoMantto" runat="server" Font-Bold="True" ForeColor="#990000" Height="17px" Width="67px"></asp:Label>
                                        Estado :
                                        <asp:Label ID="txtEstadoOT" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxRoundPanel>
                            <asp:Label ID="txtidSec" runat="server" ForeColor="#990000" Height="22px" Visible="False" Width="46px"></asp:Label>
                            <asp:Label ID="txtCodCom" runat="server" ForeColor="#990000" Height="22px" Visible="False" Width="86px"></asp:Label>
                            <asp:Label ID="txtNSIS" runat="server" ForeColor="#990000" Height="22px" Width="87px"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tecnico
                            <asp:DropDownList ID="CboPersonalCONS" runat="server" Height="31px" Width="223px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Detalle de Mantenimiento&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtObserCONSERVACION" runat="server" Height="59px" TextMode="MultiLine" Width="258px"></asp:TextBox>
                            &nbsp;
                            <asp:ImageButton ID="ibGuardar" runat="server" ImageUrl="~/Images/CHECK_NEGRO1.png" ValidationGroup="IngresoProveedor" />
                            &nbsp; &nbsp;&nbsp;&nbsp;
                            <br />
                        </td>
                    </tr>
                </table>
                <br />
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" Collapsed="True" Font-Bold="True" ForeColor="Black" HeaderText="Mantenimiento &quot;PC&quot;" ShowCollapseButton="True" Theme="MetropolisBlue" Width="634px">
        <PanelCollection>
            <dx:PanelContent runat="server">
                <table style="width:96%; height: 319px;">
                    <tr>
                        <th class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" ForeColor="#990000" Text="Reg.Mantto Comp." />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Componente Ejecutado<asp:DropDownList ID="cboManttoMayor" runat="server" Height="31px" Width="150px">
                            </asp:DropDownList>
                            <br />
                            <asp:ImageButton ID="ibGuardarManttoMayor0" runat="server" ImageUrl="~/Images/frenos_pastilla.png" ValidationGroup="IngresoProveedor" />
                            <br />
                        </th>
                        <td class="auto-style30">
                            <dx:ASPxRoundPanel ID="ASPxRoundPanel5" runat="server" Font-Bold="True" ForeColor="#660066" HeaderText="Datos Refenciales al Mantto" Height="129px" Width="323px">
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        <br />
                                        Unidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                                        <asp:Label ID="txtUnidad3" runat="server" Font-Bold="True"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Orden :&nbsp;
                                        <asp:Label ID="lblCodOt3" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        Kilometraje:&nbsp;
                                        <asp:Label ID="txtKM3" runat="server" Font-Bold="True"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fecha&nbsp; :&nbsp;
                                        <asp:Label ID="lblFecha3" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        Tipo Mantt :
                                        <asp:Label ID="txttipoMantto3" runat="server" Font-Bold="True" ForeColor="#990000" Height="17px" Width="67px"></asp:Label>
                                        Estado :
                                        <asp:Label ID="txtEstadoOT3" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxRoundPanel>
                            <asp:Label ID="lblCodOt2" runat="server" ForeColor="#990000" Height="20px" Width="113px"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            Tecnico&nbsp;<asp:DropDownList ID="cboPersonalManttoMayor" runat="server" Height="31px" Width="235px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp; Detalle de Mantenimiento&nbsp;
                            <asp:TextBox ID="txtObsManttoMayor" runat="server" Height="59px" TextMode="MultiLine" Width="265px"></asp:TextBox>
                            &nbsp;
                            <asp:ImageButton ID="ibGuardarManttoMayor" runat="server" ImageUrl="~/Images/CHECK_NEGRO1.png" ValidationGroup="IngresoProveedor" />
                            &nbsp;&nbsp;</td>
                    </tr>
                </table>
                <br />
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" Collapsed="True" Font-Bold="True" ForeColor="Black" HeaderText="Mantenimiento Correctivo" ShowCollapseButton="True" Theme="MetropolisBlue" Width="633px">
        <PanelCollection>
            <dx:PanelContent runat="server">
                <table style="width:100%;">
                    <tr>
                        <th class="auto-style1">
                            <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" ForeColor="#990000" Text="Reg.Mantto Bit." />
                            <br />
                            <asp:GridView ID="GridView7" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-hover table-striped" DataKeyNames="codComponente" EnableTheming="True" ForeColor="#333333" GridLines="None" Height="232px" Width="268px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="codComponente" HeaderText="Componente" ReadOnly="True" Visible="False">
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="nComponente" HeaderText="Mantto" ReadOnly="True" />
                                    <asp:BoundField DataField="nSistema" HeaderText="Sistema" Visible="False" />
                                    <asp:BoundField DataField="CodSistema" HeaderText="CodSistema" Visible="False" />
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton24" runat="server" CommandName="Select" Height="20px" ImageUrl="~/Images/details.png" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="False" Visible="False">
                                        <EditItemTemplate>
                                            &nbsp;<asp:ImageButton ID="ImageButton25" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                                            <asp:ImageButton ID="ImageButton26" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton27" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
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
                        </th>
                        <td class="auto-style35">
                            <dx:ASPxRoundPanel ID="ASPxRoundPanel6" runat="server" Font-Bold="True" ForeColor="#660066" HeaderText="Datos Refenciales al Mantto" Height="116px" Width="323px">
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        <br />
                                        Unidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                                        <asp:Label ID="txtUnidad4" runat="server" Font-Bold="True"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Orden :&nbsp;
                                        <asp:Label ID="lblCodOt4" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        Kilometraje:&nbsp;
                                        <asp:Label ID="txtKM4" runat="server" Font-Bold="True"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fecha&nbsp; :&nbsp;
                                        <asp:Label ID="lblFecha4" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        Tipo Mantt :
                                        <asp:Label ID="txttipoMantto4" runat="server" Font-Bold="True" ForeColor="#990000" Height="17px" Width="67px"></asp:Label>
                                        Estado :
                                        <asp:Label ID="txtEstadoOT4" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxRoundPanel>
                            <asp:Label ID="txtnBITACORA" runat="server" ForeColor="#990000" Height="22px" Width="87px"></asp:Label>
                            <asp:Label ID="txtCodBITACORA" runat="server" ForeColor="#990000" Height="22px" Visible="False" Width="86px"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tecnico&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="cboPersonalBitacora" runat="server" Height="31px" Width="230px">
                            </asp:DropDownList>
                            &nbsp;&nbsp; Detalle Mantto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtobsBitacora" runat="server" Height="59px" TextMode="MultiLine" Width="269px"></asp:TextBox>
                            <asp:ImageButton ID="ibGuardarBitacora" runat="server" ImageUrl="~/Images/CHECK_NEGRO1.png" ValidationGroup="IngresoProveedor" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="dgvDetalleRequerimientos1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table" DataKeyNames="CodRequerimiento" Font-Size="Small" Height="137px" Width="617px">
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
                <br />
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    <br />
                        </dx:PopupControlContentControl>
</ContentCollection>
                    </dx:ASPxPopupControl>
    </div>
</asp:Content>

