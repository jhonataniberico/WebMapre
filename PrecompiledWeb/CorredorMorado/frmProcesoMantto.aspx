<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="frmProcesoMantto, App_Web_hd3brtal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row-fluid">
        <div class="span4" style="overflow:scroll;">
            <h4 style="text-align:center">
                <asp:Label ID="lblFecha0" runat="server" CssClass="text-center" Text="Fecha"></asp:Label>
                <asp:TextBox ID="txtConsFecha" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date"></asp:TextBox>
            </h4>
            <h4 style="text-align:center">Ordenes Trabajo Sin Registrar</h4>
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
            <h4 style="text-align:center;">Ordenes Trabajo Validadas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
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
        <div class="span8" style="width:63%;">
            <h4 style="text-align:center">REGISTRO DE MANTTOS EJECUTADOS&nbsp;
                                                 </h4>
            <div class="span12">
                <table class="table table" border="0" draggable="false" style="width: 649px">
                    <tr>
                        <th  colspan="3" class="auto-style21">OT:&nbsp;&nbsp;
                                                 <asp:Label ID="lblCodOt" runat="server" ForeColor="#990000" Height="20px" Width="113px"></asp:Label>
                                                 Fecha :
                                                 <asp:Label ID="lblFecha" runat="server" ForeColor="#990000" Height="20px" Width="123px"></asp:Label>
                                                 &nbsp;&nbsp;&nbsp; km :&nbsp;&nbsp;
                                                 <asp:Label ID="txtKM" runat="server" ForeColor="#990000" Height="22px" Width="111px"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <td rowspan="1" class="auto-style14">&nbsp;&nbsp; Unidad&nbsp;&nbsp;
                                                 <asp:Label ID="txtUnidad" runat="server" ForeColor="#990000" Height="22px" Width="94px"></asp:Label>
                        </td>
                        <td class="auto-style14">&nbsp; Tipo :&nbsp;&nbsp;
                                                 <asp:Label ID="txttipoMantto" runat="server" ForeColor="#990000" Height="22px" Width="115px"></asp:Label>
                        </td>
                        <td class="auto-style14">Est:
                                                 <asp:Label ID="txtEstadoOT" runat="server" ForeColor="#990000" Height="22px" Width="116px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th id="Encabezado2"  colspan="3" class="auto-style22">REGISTRO DE MANTENIMIENTOS</th>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Text="Reg.Mantto Prev." ForeColor="#990000"   />
                            <br />
                            <asp:GridView ID="GridView6" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="id" Height="232px" Width="241px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="Nº" ReadOnly="True" >
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="nSistema" HeaderText="Mantto" ReadOnly="True" Visible="True"/>
                                    <asp:BoundField DataField="codComponente" HeaderText="Componente" Visible="False" />
                                    <asp:BoundField DataField="codUnidad" HeaderText="Unidad" Visible="False" />
                                    <asp:BoundField DataField="Letra" HeaderText="Letra" Visible="False" />
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton20" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/details.png" />
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
                                <SortedAscendingCellStyle BorderStyle="Outset" BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                            <asp:Label ID="txtidSec" runat="server" ForeColor="#990000" Height="22px" Width="46px" Visible="False"></asp:Label>
                            <asp:Label ID="txtNSIS" runat="server" ForeColor="#990000" Height="22px" Width="87px"></asp:Label>
                            <asp:Label ID="txtCodCom" runat="server" ForeColor="#990000" Height="22px" Width="86px" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                 <br />Detalle_Preventivo<br />
                            <asp:textbox ID="txtObserCONSERVACION" runat="server" Height="59px" TextMode="MultiLine" Width="160px"></asp:textbox>
                            <br />Tecnico:<br />
                            <asp:DropDownList ID="CboPersonalCONS" runat="server" Width="150px" Height="31px">
                            </asp:DropDownList>
                            <asp:ImageButton ID="ibGuardar" ValidationGroup="IngresoProveedor" runat="server" ImageUrl="~/Images/add24.png"/>
                        </td>
                        <td class="auto-style15">
                            <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" Text="Reg.Mantto Comp." ForeColor="#990000"   />
                            <br />Componentes:<br />
                            <asp:DropDownList ID="cboManttoMayor" runat="server" Width="150px" Height="31px">
                            </asp:DropDownList>
                            <br />Detalle_Preventivo<br />
                            <asp:textbox ID="txtObsManttoMayor" runat="server" Height="59px" TextMode="MultiLine" Width="153px"></asp:textbox>
                            <br />Tecnico:<br />
                            <asp:DropDownList ID="cboPersonalManttoMayor" runat="server" Width="150px" Height="31px">
                            </asp:DropDownList>
                            <asp:ImageButton ID="ibGuardarManttoMayor" ValidationGroup="IngresoProveedor" runat="server" ImageUrl="~/Images/add24.png"/>
                            <br />
                            <asp:Label ID="lblCodOt2" runat="server" ForeColor="#990000" Height="20px" Width="113px"></asp:Label>
                        </td>
                        <td class="auto-style15" >
                            <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" Text="Reg.Mantto Bit." ForeColor="#990000"   />
                            <br />
                            <asp:GridView ID="GridView7" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="codComponente" Height="232px" Width="161px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="codComponente" HeaderText="Componente" ReadOnly="True" Visible="False" >
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="nComponente" HeaderText="Mantto" ReadOnly="True" Visible="True"/>
                                    <asp:BoundField DataField="nSistema" HeaderText="Sistema" Visible="False" />
                                    <asp:BoundField DataField="CodSistema" HeaderText="CodSistema" Visible="False" />
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton24" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/details.png" />
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
                                <SortedAscendingCellStyle BorderStyle="Outset" BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                            <asp:Label ID="txtnBITACORA" runat="server" ForeColor="#990000" Height="22px" Width="87px"></asp:Label>
                            <br />
                            <asp:Label ID="txtCodBITACORA" runat="server" ForeColor="#990000" Height="22px" Width="86px" Visible="False"></asp:Label>
                            <br />Detalle_Bitacora<br />
                            <asp:textbox ID="txtobsBitacora" runat="server" Height="59px" TextMode="MultiLine" Width="160px"></asp:textbox>
                            <br />Tecnico:&nbsp;<asp:DropDownList ID="cboPersonalBitacora" runat="server" Width="138px" Height="31px">
                            </asp:DropDownList>
                                            &nbsp;<asp:ImageButton ID="ibGuardarBitacora" ValidationGroup="IngresoProveedor" runat="server" ImageUrl="~/Images/add24.png"/>
                                                 &nbsp;</td>
                    </tr>
                    <tr>
                        <th id="Encabezado1" colspan="3" class="auto-style8">VALIDAR TERMINO DE REGISTRO&nbsp;&nbsp; 
                            <asp:ImageButton ID="ibValidadorYCIERREOPERATIVO" ValidationGroup="IngresoProveedor" runat="server" ImageUrl="~/Images/CHECK_NEGRO2.png"/>
                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                 </th>
                    </tr>
                </table>
            </div>
            <div class="span12">
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
    </div>
</asp:Content>

