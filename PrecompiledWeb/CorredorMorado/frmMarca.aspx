﻿<%@ page language="VB" autoeventwireup="false" inherits="frmMarca, App_Web_hd3brtal" masterpagefile="Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 653px;    }
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
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idMarca" ForeColor="#333333" GridLines="None" Width="543px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="idMarca" HeaderText="id" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Marca">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nMarca") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Width="154px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("nMarca") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="lnkUpdating" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="lnkCanceling" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="lnkInsertar" runat="server" ForeColor="White" CommandName="insertar">Insertar</asp:LinkButton>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkEditing" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:LinkButton ID="InsertarNuevo" runat="server" CommandName="insertar">Insertar Nuevo</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>