<%@ page language="VB" autoeventwireup="false" inherits="frmPersonal, App_Web_ofhbbrxf" masterpagefile="Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 653px;    }
        .auto-style3 {
            width: 653px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idPersona" ForeColor="#333333" GridLines="None" Width="613px" CssClass="table table-hover table-striped">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="idpersona" HeaderText="id" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Nombres">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtNombre" runat="server" Text='<%# Bind("nPersona") %>' Width="126px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtNombre2" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("nPersona") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DNI">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDni" runat="server" Text='<%# Bind("dni") %>' Width="125px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtDni2" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("dni") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Puesto">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlPuesto" runat="server" DataSourceID="LinqDataSource1" DataTextField="nPuesto" DataValueField="nPuesto" Width="145px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idPuesto" Select="new (nPuesto)" TableName="Puesto">
                                </asp:LinqDataSource>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="ddlPuesto2" runat="server" Width="123px" DataSourceID="LinqDataSource3" DataTextField="nPuesto" DataValueField="nPuesto">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idPuesto" Select="new (nPuesto)" TableName="Puesto">
                                </asp:LinqDataSource>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("nPuesto") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Update" Height="22px" ImageUrl="~/Images/Save-icon.png" Width="21px" />
                                &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" CommandName="Cancel" Height="28px" ImageUrl="~/Images/cancel.png" Width="25px" />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="insertar" ImageUrl="~/Images/Save-icon.png" />
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton5" runat="server" CommandName="Edit" Height="22px" ImageUrl="~/Images/edit.png" Width="21px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" Visible="False" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/add.png" />
            </td>
            <td class="auto-style4"></td>
        </tr>
    </table>

</asp:Content>