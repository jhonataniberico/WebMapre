<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="FrmCheck_in, App_Web_lijjgbf5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row-fluid">
    <div class="span8" style="width:90%;">
        <h4 style="text-align:center">REGISTRO DE CHECK_IN</h4>
        <div class="span12">
            <table class="table table" border="0" draggable="false" style="width: 750px">
                <tr>
                    <th  colspan="3" class="auto-style21">REGISTRO CHECK_IN
                    </th>
                </tr>
                <tr>
                    <td rowspan="1">&nbsp;&nbsp; </td>
                    <td class="auto-style14">&nbsp; Fecha :&nbsp;&nbsp;<asp:TextBox ID="txtFecha_checkin" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date"></asp:TextBox>
                        <asp:ImageButton ID="ibGenerar_checkin" ValidationGroup="IngresoProveedor" runat="server" ImageUrl="~/Images/CHECK_VERDE1.png" OnClientClick="Deseas Generar los Check_in"/>
                    &nbsp;</td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <th id="Encabezado2"  colspan="3" class="auto-style22">CHECK_IN&nbsp; GENERADOS</th>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;<asp:GridView ID="GridViewDetalleCheckin" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="codcheckin" Height="232px" Width="653px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" >
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="codUnidad" HeaderText="Unidad" />
                                <asp:BoundField DataField="placa" HeaderText="Placa" ReadOnly="True" Visible="True"/>
                                <asp:BoundField DataField="codCheckin" HeaderText="Codigo" />
                                <asp:BoundField DataField="idEstado" HeaderText="idEstado" Visible="False" />
                                <asp:BoundField DataField="Estado" HeaderText="Estado" />
                                <asp:BoundField DataField="DescServicio" HeaderText="DescServicio" Visible="False" />
                                <asp:BoundField DataField="costo" HeaderText="costo" Visible="False" />
                                <asp:BoundField DataField="obs" HeaderText="obs" Visible="False" />
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton20" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/CHECK_VERDE1.png" />
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
                    </td>
                    <td class="auto-style15" >&nbsp;</td>
                </tr>
                <tr>
                    <th id="Encabezado1" colspan="3" class="auto-style8">DETALLE DE MANTENIMIENTO</th>
                </tr>
            </table>
        </div>
        <div class="span12">
        <asp:GridView ID="GridView3Unidad" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" >
                <ItemStyle Font-Bold="True" />
                </asp:BoundField>
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
        </div>
    </div>
    <br/>
</div>
</asp:Content>

