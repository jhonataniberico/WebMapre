<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="frmAlertaMantenimientos, App_Web_k5hroeaa" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row-fluid">
    <div class="span8" style="width:89%;">
        <h4 style="text-align:center">ALERTAS DE MANTENIMIENTO</h4>
        <div class="span12">
            <table class="table table" border="0" draggable="false" style="width: 884px">
                <tr>
                    <th  colspan="3" class="auto-style21">ALERTAS DE MANTENIMIENTOS PREVENTIVOS</th>
                </tr>
                <tr>
                    <td rowspan="1">&nbsp;&nbsp; </td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Nº&nbsp;<asp:GridView ID="GridView3" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="id" Height="232px" Width="871px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" Visible="False" >
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" />
                                <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" />
                                <asp:BoundField DataField="placa" HeaderText="Placa" />
                                <asp:BoundField DataField="fecha" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy}" />
                                <asp:BoundField DataField="sec" HeaderText="Nº" />
                                <asp:BoundField DataField="nSistema" HeaderText="Mantto" ReadOnly="True" Visible="True"/>
                                <asp:BoundField DataField="kmRecorrido" HeaderText="kmRecor." Visible="False" />
                                <asp:BoundField DataField="CodOt" HeaderText="CodOt" Visible="False" />
                                <asp:BoundField DataField="kmIntervencion" HeaderText="kmInter" Visible="False" />
                                <asp:BoundField DataField="nEstado" HeaderText="nEstado" Visible="False" ApplyFormatInEditMode="True" />
                                <asp:BoundField DataField="kmComponente" HeaderText="kmComponente" Visible="False" />
                                <asp:BoundField DataField="codSistema" HeaderText="codSistema" Visible="False" />
                                <asp:BoundField DataField="nSistema" HeaderText="nSistema" Visible="False" />
                                <asp:BoundField DataField="kmLimite" HeaderText="Km Programado" />
                                <asp:BoundField DataField="porcentaje" HeaderText="%" />
                                <asp:BoundField DataField="KmAceite" HeaderText="Km Mantto" />
                                <asp:BoundField DataField="detalleObs" HeaderText="detalleObs" Visible="False" />
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
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <th id="Encabezado2"  colspan="3" class="auto-style22">ALERTAS DE COMPONENTES</th>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style15">
                        <asp:GridView ID="GridView4" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="id" Height="232px" Width="871px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ButtonType="Image" CancelText="" DeleteImageUrl="~/Images/CHECKJS2.png" DeleteText="" EditImageUrl="~/Images/CHECKJS2.png" EditText="" ShowDeleteButton="True" />
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" Visible="False" >
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" />
                                <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" />
                                <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                                <asp:BoundField DataField="sec" HeaderText="Nº" />
                                <asp:BoundField DataField="nComponente" HeaderText="Mantto" ReadOnly="True" Visible="True"/>
                                <asp:BoundField DataField="kmRecorrido" HeaderText="kmRecor." Visible="False" />
                                <asp:BoundField DataField="CodOt" HeaderText="CodOt" Visible="False" />
                                <asp:BoundField DataField="kmIntervencion" HeaderText="kmInter" Visible="False" />
                                <asp:BoundField DataField="nEstado" HeaderText="nEstado" Visible="False" ApplyFormatInEditMode="True" />
                                <asp:BoundField DataField="kmComponente" HeaderText="kmComponente" Visible="False" />
                                <asp:BoundField DataField="codSistema" HeaderText="codSistema" Visible="False" />
                                <asp:BoundField DataField="nSistema" HeaderText="nSistema" Visible="False" />
                                <asp:BoundField DataField="kmLimite" HeaderText="Km Programado" />
                                <asp:BoundField DataField="porcentaje" HeaderText="%" />
                                <asp:BoundField DataField="KmAceite" HeaderText="Km Mantto" />
                                <asp:BoundField DataField="detalleObs" HeaderText="detalleObs" Visible="False" />
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
                    </td>
                    <td class="auto-style15" >&nbsp;</td>
                </tr>
                <tr>
                    <th id="Encabezado1" colspan="3" class="auto-style8">DETALLE DE MANTENIMIENTO</th>
                </tr>
            </table>
        </div>
        <div class="span12">
        </div>
    </div>
    <br/>
</div>
    <h4>
        &nbsp;</h4>
    </asp:Content>

