<%@ page title="" language="VB" masterpagefile="~/Site.master" autoeventwireup="false" inherits="FichaTecnicaVehicular, App_Web_lijjgbf5" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            height: 63px;
            width: 299px;
        }
        .auto-style10 {
            width: 299px;
        }
        .auto-style17 {
            height: 63px;
            width: 337px;
        }
        .auto-style18 {
        }
        .auto-style19 {
            height: 63px;
            width: 327px;
        }
        .auto-style20 {
            width: 327px;
        }
        .auto-style21 {
            width: 337px;
            height: 312px;
        }
        .auto-style22 {
            width: 327px;
            height: 312px;
        }
        .auto-style23 {
            width: 299px;
            height: 312px;
        }
        .auto-style24 {
        }
        .auto-style25 {
            width: 100px;
            height: 34px;
        }
        .auto-style26 {
            height: 34px;
        }
        .auto-style27 {
            width: 337px;
            height: 19px;
        }
        .auto-style28 {
            width: 327px;
            height: 19px;
        }
        .auto-style29 {
            width: 299px;
            height: 19px;
        }
        .auto-style30 {
            width: 158px;
        }
        .auto-style31 {
            width: 177px;
        }
        .auto-style32 {
        }
        .auto-style33 {
        }
        .auto-style34 {
            width: 32px;
        }
        .auto-style35 {
            width: 158px;
            height: 33px;
        }
        .auto-style36 {
            width: 177px;
            height: 33px;
        }
        .auto-style37 {
            width: 32px;
            height: 33px;
        }
        .auto-style39 {
            width: 211px;
            height: 33px;
        }
        .auto-style40 {
            height: 33px;
        }
        .auto-style41 {
            width: 173px;
        }
        .auto-style42 {
            width: 35px;
            height: 33px;
        }
        .auto-style44 {
            width: 199px;
        }
        .auto-style45 {
            width: 199px;
            height: 33px;
        }
        .auto-style47 {
            width: 161px;
            height: 33px;
        }
        .auto-style48 {
            width: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ShowCollapseButton="true" Width="724px" HeaderText="Ficha Tecnica de Vehiculo" Theme="MetropolisBlue" BackColor="#E8E8E8" Font-Bold="False" ForeColor="White">
        <GroupBoxHeaderStyle BackColor="#660066" ForeColor="White">
        </GroupBoxHeaderStyle>
        <HeaderContent BackColor="#666666">
        </HeaderContent>
        <PanelCollection>
            <dx:PanelContent runat="server">
                <table style="width:101%;">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#660066" Text="Vehiculo a Consultar:"></asp:Label>
                            <br />
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="text-center" Font-Size="Larger" Height="47px" Width="166px">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style19">&nbsp;<br /></td>
                        <td class="auto-style9">IMPRESION<br /></td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#660066" Text="Titular de Cuenta :"></asp:Label>
                            <br />
                            <asp:Label ID="LblMonelo0" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style19">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#660066" Text="Modelo de Vehiculo :"></asp:Label>
                            <br />
                            <asp:Label ID="LblMonelo" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#660066" Text="Marca de Vehiculo :"></asp:Label>
                            <br />
                            <asp:Label ID="LblMarca" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <dx:ASPxRoundPanel ID="ASPxRoundPanel16" runat="server" BackColor="#FCFCFC" ForeColor="#660066" HeaderText="Motor" Height="262px" Theme="Default" Width="368px">
                                <HeaderStyle BackColor="#666666" ForeColor="White" />
                                <LoadingPanelStyle Border-BorderColor="#666666" ForeColor="#666666">
                                    <BorderBottom BorderColor="#666666" />
                                </LoadingPanelStyle>
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        &nbsp;<table style="width:100%;">
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Modelo  "></asp:Label>
                                                    &nbsp;&nbsp;</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Tipo"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Cilindrada"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox12" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Potencia"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox15" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Torque"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox14" runat="server" BorderStyle="Solid" Height="18px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Motor      :"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtObs" runat="server" BackColor="White" BorderColor="#006600" ForeColor="Black" Height="59px" TextMode="MultiLine" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                                <Border BorderColor="#666666" />
                            </dx:ASPxRoundPanel>
                        </td>
                        <td class="auto-style22">
                            <dx:ASPxRoundPanel ID="ASPxRoundPanel23" runat="server" BackColor="#FCFCFC" ForeColor="#660066" HeaderText="Transmision" Height="262px" Theme="Default" Width="368px">
                                <HeaderStyle BackColor="#666666" ForeColor="White" />
                                <LoadingPanelStyle Border-BorderColor="#666666" ForeColor="#666666">
                                    <BorderBottom BorderColor="#666666" />
                                </LoadingPanelStyle>
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        &nbsp;<table style="width:100%;">
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label54" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Caja Cambio"></asp:Label>
                                                    &nbsp;&nbsp;</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox46" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label55" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Tipo Caja"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox47" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label56" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Diferencial"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox48" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label57" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Embrague"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox49" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label59" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Motor      :"></asp:Label>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtObs2" runat="server" BackColor="White" BorderColor="#006600" ForeColor="Black" Height="59px" TextMode="MultiLine" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        <br />
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                                <Border BorderColor="#666666" />
                            </dx:ASPxRoundPanel>
                        </td>
                        <td class="auto-style23">
                            <dx:ASPxRoundPanel ID="ASPxRoundPanel24" runat="server" BackColor="#FCFCFC" ForeColor="#660066" HeaderText="Carroceria" Height="262px" Theme="Default" Width="368px">
                                <HeaderStyle BackColor="#666666" ForeColor="White" />
                                <LoadingPanelStyle Border-BorderColor="#666666" ForeColor="#666666">
                                    <BorderBottom BorderColor="#666666" />
                                </LoadingPanelStyle>
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        &nbsp;<table style="width:100%;">
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label60" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Modelo  "></asp:Label>
                                                    &nbsp;&nbsp;</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox51" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label61" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Tipo"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox52" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label62" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Cilindrada"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox53" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label63" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Potencia"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox54" runat="server" BorderStyle="Solid" Height="16px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style25">
                                                    <asp:Label ID="Label64" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Torque"></asp:Label>
                                                </td>
                                                <td class="auto-style26">
                                                    <asp:TextBox ID="TextBox55" runat="server" BorderStyle="Solid" Height="18px" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style24">
                                                    <asp:Label ID="Label65" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Motor      :"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtObs3" runat="server" BackColor="White" BorderColor="#006600" ForeColor="Black" Height="59px" TextMode="MultiLine" Width="229px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                                <Border BorderColor="#666666" />
                            </dx:ASPxRoundPanel>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27"></td>
                        <td class="auto-style28"></td>
                        <td class="auto-style29"></td>
                    </tr>
                    <tr>
                        <td class="auto-style18" colspan="3">
                            <dx:ASPxRoundPanel ID="ASPxRoundPanel25" runat="server" BackColor="#FCFCFC" ForeColor="#660066" HeaderText="Chasis" Height="262px" Theme="Default" Width="1128px">
                                <HeaderStyle BackColor="#666666" ForeColor="White" />
                                <LoadingPanelStyle Border-BorderColor="#666666" ForeColor="#666666">
                                    <BorderBottom BorderColor="#666666" />
                                </LoadingPanelStyle>
                                <PanelCollection>
                                    <dx:PanelContent runat="server">
                                        &nbsp;<table style="width:100%;">
                                            <tr>
                                                <td class="auto-style24" colspan="2" style="background-color: #666666">
                                                    <asp:Label ID="Label77" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Nº Chasis "></asp:Label>
                                                    <br />
                                                    <br />
                                                </td>
                                                <td class="auto-style34">&nbsp;</td>
                                                <td aria-busy="False" class="auto-style32" colspan="2" style="background-color: #666666">&nbsp;</td>
                                                <td class="auto-style41">&nbsp;</td>
                                                <td class="auto-style33" colspan="2" style="background-color: #666666">
                                                    <asp:Label ID="Label66" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Modelo  "></asp:Label>
                                                    &nbsp;&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style30">
                                                    <asp:Label ID="Label72" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Nº Chasis "></asp:Label>
                                                </td>
                                                <td class="auto-style31">
                                                    <asp:TextBox ID="TextBox56" runat="server" BorderStyle="Solid" Height="16px" Width="135px"></asp:TextBox>
                                                </td>
                                                <td class="auto-style34">&nbsp;</td>
                                                <td class="auto-style44">
                                                    <asp:Label ID="Label75" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Modelo  "></asp:Label>
                                                </td>
                                                <td class="auto-style33">&nbsp;</td>
                                                <td class="auto-style41">&nbsp;</td>
                                                <td class="auto-style48">
                                                    <asp:Label ID="Label67" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Tipo"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox57" runat="server" BorderStyle="Solid" Height="16px" Width="174px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style35">
                                                    <asp:Label ID="Label73" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Nº Serie Motor"></asp:Label>
                                                </td>
                                                <td class="auto-style36">
                                                    <asp:TextBox ID="TextBox61" runat="server" BorderStyle="Solid" Height="16px" Width="135px"></asp:TextBox>
                                                </td>
                                                <td class="auto-style37"></td>
                                                <td class="auto-style45"></td>
                                                <td class="auto-style39"></td>
                                                <td class="auto-style42"></td>
                                                <td class="auto-style47">
                                                    <asp:Label ID="Label68" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Cilindrada"></asp:Label>
                                                </td>
                                                <td class="auto-style40">
                                                    <asp:TextBox ID="TextBox58" runat="server" BorderStyle="Solid" Height="16px" Width="169px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style30">
                                                    <asp:Label ID="Label76" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Nº Chasis de Carroceria"></asp:Label>
                                                </td>
                                                <td class="auto-style31">
                                                    <asp:TextBox ID="TextBox62" runat="server" BorderStyle="Solid" Height="16px" Width="135px"></asp:TextBox>
                                                </td>
                                                <td class="auto-style34">&nbsp;</td>
                                                <td class="auto-style44">&nbsp;</td>
                                                <td class="auto-style33">&nbsp;</td>
                                                <td class="auto-style41">&nbsp;</td>
                                                <td class="auto-style48">
                                                    <asp:Label ID="Label69" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Potencia"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox59" runat="server" BorderStyle="Solid" Height="16px" Width="173px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style30">&nbsp;</td>
                                                <td class="auto-style31">
                                                    <asp:TextBox ID="TextBox63" runat="server" BorderStyle="Solid" Height="16px" Width="135px"></asp:TextBox>
                                                </td>
                                                <td class="auto-style34">&nbsp;</td>
                                                <td class="auto-style44">&nbsp;</td>
                                                <td class="auto-style33">&nbsp;</td>
                                                <td class="auto-style41">&nbsp;</td>
                                                <td class="auto-style48">
                                                    <asp:Label ID="Label70" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Torque"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox60" runat="server" BorderStyle="Solid" Height="18px" Width="178px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style30">&nbsp;</td>
                                                <td class="auto-style31">&nbsp;</td>
                                                <td class="auto-style34">&nbsp;</td>
                                                <td class="auto-style44">&nbsp;</td>
                                                <td class="auto-style33">&nbsp;</td>
                                                <td class="auto-style41">&nbsp;</td>
                                                <td class="auto-style48">
                                                    <asp:Label ID="Label71" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Motor      :"></asp:Label>
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                                <Border BorderColor="#666666" />
                            </dx:ASPxRoundPanel>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>

