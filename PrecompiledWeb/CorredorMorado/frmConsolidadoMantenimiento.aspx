<%@ page language="VB" autoeventwireup="false" inherits="frmConsolidadoMantenimiento, App_Web_k5hroeaa" masterpagefile="Site.master" enableeventvalidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 
    <style type="text/css">
        .auto-style2 {
            height: 48px;
        }
        .auto-style3 {
            width: 972px;
        }
    </style>
 
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="span8" style="width:103%;">
        <h4 style="text-align:center">CONSOLIDADO DE MANTENIMIENTO</h4>
        <div class="span12">
            <table class="table table" border="0" draggable="false" style="width: 1031px">
                <tr>
                    <th  colspan="3" class="auto-style2">&nbsp;Fecha :&nbsp;&nbsp;<asp:TextBox ID="txtConsultaFecha" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date"></asp:TextBox>
                    &nbsp;&nbsp;</th>
                </tr>
                <tr>
                    <td rowspan="1"> </td>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView3" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" Height="232px" Width="1005px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" >
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="codOt" HeaderText="Nº OT" Visible="True"/>
                                <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" />
                                <asp:BoundField DataField="codUnidad" HeaderText="Unidad" />
                                <asp:BoundField DataField="nTipoOT" HeaderText="Tipo Mant." />
                                <asp:BoundField DataField="nComponente" HeaderText="Mantto" />
                                <asp:BoundField DataField="TiempoProg" HeaderText="TiempoProg" />
                                <asp:BoundField DataField="nEstadoOT" HeaderText="EstadoOT" />
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton20" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/travel_bus.png" />
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
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Images/excel.png" Width="48px" />
                    </td>
                    <td class="auto-style15" >&nbsp;</td>
                </tr>
                <tr>
                    <th id="Encabezado1" colspan="3" class="auto-style8">PLATAFORMA VIRTUAL DE MANTTO</th>
                </tr>
            </table>
        </div>
        <div class="span12">
        </div>
    </div>
      

</asp:Content>