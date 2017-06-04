<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="FrmAnalisisUnidad, App_Web_aofv2bk4" %>

<%@ Register assembly="DevExpress.XtraCharts.v16.2.Web, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="span8" style="width:103%;">
    <h4 style="text-align:center"><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="text-center" Font-Size="Larger" Width="166px" Height="47px">
        </asp:DropDownList>
                </h4>
    <div class="span12">
        <table class="table table" border="0" draggable="false" style="width: 1031px">
            <tr>
                <th  colspan="3" class="auto-style2">Fecha :&nbsp;&nbsp;&nbsp;&nbsp;</th>
            </tr>
            <tr>
                <td rowspan="1"></td>
                <td class="auto-style3">
                    <br />
                    <br />
                    <asp:Panel ID="Panel1" runat="server" Height="31px" Width="601px" style="margin-top: 0px">
                        &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Text="Estado Actual de Mantto"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="lblKMProgramado" runat="server" Height="19px" Width="59px" BackColor="#660066" Font-Bold="True" Font-Names="Arial" ForeColor="White">km Prog.</asp:TextBox>
                        <asp:TextBox ID="txtkmProg2" runat="server" Height="19px" Width="109px" Font-Bold="True" ForeColor="#000099"></asp:TextBox>
                    </asp:Panel>
                    <asp:Panel ID="Panel2" runat="server" Height="30px" Width="601px">
                        <asp:TextBox ID="lblNsecuencia" runat="server" Height="19px" Width="36px" BackColor="#660066" BorderColor="#660066" Font-Bold="True" Font-Names="Calibri Light" ForeColor="White"> Nº</asp:TextBox>
                        <asp:TextBox ID="lblMantto" runat="server" Height="19px" Width="182px" BackColor="#660066" Font-Bold="True" Font-Names="Arial" ForeColor="White">       Tipo de Mantto</asp:TextBox>
                        <asp:TextBox ID="blbporcentaje" runat="server" Height="19px" Width="118px" BackColor="#660066" Font-Bold="True" Font-Names="Arial" ForeColor="White">    % Vida Util</asp:TextBox>
                        <asp:TextBox ID="lblkmaceite" runat="server" Height="19px" Width="181px" BackColor="#660066" Font-Bold="True" Font-Names="Arial" ForeColor="White">           Km Recorrido</asp:TextBox>
                    </asp:Panel>
                    <asp:Panel ID="Panel4" runat="server" Height="52px" Width="601px">
                        <asp:TextBox ID="txtsec2" runat="server" Height="40px" Width="35px" Font-Bold="True" ForeColor="#000099"></asp:TextBox>
                        <asp:TextBox ID="txtnsistema2" runat="server" Height="40px" Width="182px" Font-Bold="True" ForeColor="#000099"></asp:TextBox>
                        <asp:TextBox ID="txtporcentaje" runat="server" Height="40px" Width="118px" Font-Bold="True" ForeColor="#000099"></asp:TextBox>
                        <asp:TextBox ID="txtaceite2" runat="server" Height="40px" Width="180px" Font-Bold="True" ForeColor="#000099" Font-Size="Medium"></asp:TextBox>
                    </asp:Panel>
                    <br />
                    <asp:GridView ID="GridView3" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#660066" GridLines="None" Height="232px" Width="603px" BackColor="#660066">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="fecha" HeaderText="fecha" />
                            <asp:BoundField DataField="sec" HeaderText="sec" Visible="True"/>
                            <asp:BoundField DataField="nSistema" HeaderText="Mantto" />
                            <asp:BoundField DataField="codSistema" HeaderText="codSistema" Visible="False" >
                            </asp:BoundField>
                            <asp:BoundField DataField="CodOT" HeaderText="CodOT" />
                            <asp:BoundField DataField="kmIntervencion" HeaderText="kmIntervencion" />
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
                    <br />
                    <br />
                    <br />
                    <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" Height="200px" Width="300px">
<Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series Name="Series 1">
                                <viewserializable>
                                    <dx:DoughnutSeriesView>
                                    </dx:DoughnutSeriesView>
                                </viewserializable>
                            </dx:Series>
                        </SeriesSerializable>
                        <Titles>
                            <dx:ChartTitle />
                        </Titles>
                    </dx:WebChartControl>
                    <br />
                    <br />
                    <br />
                </td>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Images/excel.png" Width="48px" />
                    <br />
                    <asp:GridView ID="GridView4" 
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
                                    <asp:ImageButton ID="ImageButton24" runat="server" CommandName="Select" Height="32px" ImageUrl="~/Images/CHECKJS2.png" />
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
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" BorderColor="Blue" />
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
                <th id="Encabezado1" colspan="3" class="auto-style8">ANALIASIS DE UNIDAD</th>
            </tr>
        </table>
    </div>
    <div class="span12">
    </div>
</div>
</asp:Content>

