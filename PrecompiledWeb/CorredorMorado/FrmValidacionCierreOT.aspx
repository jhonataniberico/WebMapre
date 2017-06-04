<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="FrmValidacionCierreOT, App_Web_ofhbbrxf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row-fluid">
        <div class="span8" style="width:63%;">
            <h4 style="text-align:center">VALIDACION DE MANTENIMIENTO-CIERRE OT</h4>
            <div class="span12">
                <table class="table table" border="0" draggable="false" style="width: 649px">
                    <tr>
                        <th  colspan="3" class="auto-style21">Fecha :&nbsp;&nbsp;   <asp:TextBox ID="txtConsFecha" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date"></asp:TextBox>
   
                        </th>
                    </tr>
                    <tr>
                        <td rowspan="1">&nbsp;&nbsp; </td>
                        <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Validacion de Mantenimientos Preventivos y Correctivos&nbsp;&nbsp;
                            <asp:ImageButton ID="ibGuardarBitacora" ValidationGroup="IngresoProveedor" runat="server" ImageUrl="~/Images/CHECK_CIRCULO12.png"/>
                        </td>
                        <td class="auto-style14"></td>
                    </tr>
                    <tr>
                        <th id="Encabezado2"  colspan="3" class="auto-style22">ORDENES TRABAJO X VALIDAD</th>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style15">
                            <asp:GridView ID="GridViewDetalleValidacion" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="idDetalleMant" Height="232px" Width="653px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="idDetalleMant" HeaderText="idDetalleMant" Visible="False" />
                                <asp:BoundField DataField="fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" >
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="codUnidad" HeaderText="Unidad" />
                                <asp:BoundField DataField="codOT" HeaderText="OT" ReadOnly="True" Visible="True"/>
                                <asp:BoundField DataField="nSistema" HeaderText="Sistema" />
                                <asp:BoundField DataField="nComponente" HeaderText="Mantto" Visible="False" />
                                <asp:BoundField DataField="detalleObs" HeaderText="Detalle Mantto" />
                                <asp:BoundField DataField="nPersona" HeaderText="Tecnico" />
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton36" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/CHECK_VERDE1.png" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False" Visible="False">
                                    <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton37" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                                        <asp:ImageButton ID="ImageButton38" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton39" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
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
                        </td>
                        <td class="auto-style15" >&nbsp;</td>
                    </tr>
                    <tr>
                        <th id="Encabezado1" colspan="3" class="auto-style8">ORDENES TRABAJO POR CERRAR</th>
                    </tr>
                </table>
            </div>
            <div class="span12">
               <asp:GridView ID="GridViewDetalleOTCerradas" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="codUnidad">
                   <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" Visible="True"/>
                    <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" />
                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" >
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" />
                    <asp:BoundField DataField="Ref" HeaderText="Ref" Visible="False" />
                    <asp:BoundField DataField="nTipoOT" HeaderText="Tipo OT"/>
                    <asp:BoundField DataField="nComponente" HeaderText="Mantenimiento" ReadOnly="True" />
                    <asp:BoundField DataField="nEstadoOT" HeaderText="Estado" />
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
                    <asp:BoundField DataField="kmIntervencion" HeaderText="kmInter" Visible="False" />
                    <asp:BoundField DataField="TiempoProg" HeaderText="TiempoProg" Visible="False" />
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
   
  
   
  
               <asp:GridView ID="GridViewDetalleOTCIERREOPERATIVO" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="codUnidad">
                   <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" Visible="True"/>
                    <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" />
                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" >
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" />
                    <asp:BoundField DataField="Ref" HeaderText="Ref" Visible="False" />
                    <asp:BoundField DataField="nTipoOT" HeaderText="Tipo OT"/>
                    <asp:BoundField DataField="nComponente" HeaderText="Mantenimiento" ReadOnly="True" />
                    <asp:BoundField DataField="nEstadoOT" HeaderText="Estado" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton40" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/CHECK_NEGRO2.png" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False" Visible="False">
                        <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton41" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                            <asp:ImageButton ID="ImageButton42" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton43" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="kmIntervencion" HeaderText="kmInter" Visible="False" />
                    <asp:BoundField DataField="TiempoProg" HeaderText="TiempoProg" Visible="False" />
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
        <asp:GridView ID="dgvDetalleConservacion" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="idDetalleMant" HeaderText="idDetalleMant" ReadOnly="True" >
                <ItemStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="fecha" HeaderText="fecha" />
                <asp:BoundField DataField="codUnidad" HeaderText="codUnidad" />
                <asp:BoundField DataField="codSistema" HeaderText="codSistema" />
                <asp:BoundField DataField="codComponente" HeaderText="codComponente" />
                <asp:BoundField DataField="codOt" HeaderText="codOt" />
                <asp:BoundField DataField="nSistema" HeaderText="nSistema" Visible="False" />
                <asp:BoundField DataField="nComponente" HeaderText="nComponente" Visible="False" />
                <asp:BoundField DataField="DetalleObs" HeaderText="DetalleObs" Visible="False" />
                <asp:BoundField DataField="nPersona" HeaderText="Tecnico" Visible="False" />
                <asp:BoundField DataField="sec" HeaderText="sec" Visible="False" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton28" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/travel_bus.png" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" Visible="False">
                    <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton29" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                        <asp:ImageButton ID="ImageButton30" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton31" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
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
        <asp:GridView ID="dgvDetalleComponente" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="idDetalleMant" HeaderText="idDetalleMant" ReadOnly="True" >
                <ItemStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="fecha" HeaderText="fecha" />
                <asp:BoundField DataField="codUnidad" HeaderText="codUnidad" />
                <asp:BoundField DataField="codSistema" HeaderText="codSistema" />
                <asp:BoundField DataField="codComponente" HeaderText="codComponente" />
                <asp:BoundField DataField="codOt" HeaderText="codOt" />
                <asp:BoundField DataField="nSistema" HeaderText="nSistema" Visible="False" />
                <asp:BoundField DataField="nComponente" HeaderText="nComponente" Visible="False" />
                <asp:BoundField DataField="DetalleObs" HeaderText="DetalleObs" Visible="False" />
                <asp:BoundField DataField="nPersona" HeaderText="Tecnico" Visible="False" />
                <asp:BoundField DataField="sec" HeaderText="sec" Visible="False" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton32" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/travel_bus.png" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" Visible="False">
                    <EditItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImageButton33" runat="server" CommandName="Update" Height="32px" ImageUrl="~/Images/Save-icon.png" Width="32px" />
                        <asp:ImageButton ID="ImageButton34" runat="server" CommandName="Cancel" Height="32px" ImageUrl="~/Images/cancel.png" Width="32px" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton35" runat="server" CommandName="Edit" Height="32px" ImageUrl="~/Images/edit.png" Width="32px" />
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
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
        <br/>
    </div>
</asp:Content>

