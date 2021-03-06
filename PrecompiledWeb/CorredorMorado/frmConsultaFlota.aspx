﻿<%@ page language="VB" autoeventwireup="false" inherits="frmConsultaFlota, App_Web_lijjgbf5" masterpagefile="Site.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 
    <style type="text/css">
        .auto-style1 {
            width: 208px;
        font-weight: 700;
    }
        .auto-style3 {
        width: 165px;
    }
    .auto-style4 {
        width: 317px;
    }
    </style>
 
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
       <h3>Consulta por Sistema</h3>
    <table >
    <tr>
        <td class="auto-style1">
            Entre<br />
       
            <asp:TextBox ID="Fecha1" runat="server" Width="158px" TextMode="Date"></asp:TextBox>
   
            <asp:TextBox ID="Fecha2" runat="server" Width="154px" TextMode="Date"></asp:TextBox>
        
&nbsp;
        </td>
        <td class="auto-style1">
            Unidad<br />
            <asp:DropDownList ID="ddUnidades" runat="server" DataSourceID="lnqUnidades" DataTextField="codUnidad" DataValueField="codUnidad" Width="134px" Height="26px">
            </asp:DropDownList>
        
        </td>
        <td class="auto-style3">
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Sistema"></asp:Label>
            <asp:DropDownList ID="ddSistema" runat="server" DataSourceID="LinqSistemas" DataTextField="nSistema" DataValueField="nSistema">
            </asp:DropDownList>
            <br />
        </td>
        <td class="auto-style3">
            <asp:ImageButton ID="ibBuscar" runat="server" Height="48px" ImageUrl="~/Images/search.png" Width="48px" />
            <asp:ImageButton ID="imgExcel" runat="server" Height="52px" ImageUrl="~/Images/Excel.png" Width="48px" />
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idDetalleMant" CssClass="table table-hover table-striped" AllowSorting="True" EnableTheming="True">
                <Columns>
                    <asp:BoundField DataField="idDetalleMant" HeaderText="Id" ReadOnly="True" Visible="False" />
                    <asp:TemplateField HeaderText="Unidad">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("codUnidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" />
                    <asp:TemplateField HeaderText="OT">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlOT" runat="server" DataSourceID="LinqDataSource5" DataTextField="codOt" DataValueField="codOt" Width="100px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource5" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (codOt)" TableName="Ot">
                            </asp:LinqDataSource>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlOT2" runat="server" DataSourceID="LinqDataSource8" DataTextField="codOt" DataValueField="codOt" Width="100px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource8" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="codOt" Select="new (codOt)" TableName="Ot">
                            </asp:LinqDataSource>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("codOt") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Km Intervención">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("kmIntervencion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sistema">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlSistema" runat="server" DataSourceID="lnqSistema" DataTextField="nSistema" DataValueField="nSistema" Width="131px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="lnqSistema" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="codSistema" Select="new (nSistema)" TableName="Sistema">
                            </asp:LinqDataSource>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlSistemas2" runat="server" DataSourceID="lnkSistemas" DataTextField="nSistema" DataValueField="nSistema" Width="147px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="lnkSistemas" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="codSistema" Select="new (nSistema)" TableName="Sistema">
                            </asp:LinqDataSource>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("nSistema") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlEstado" runat="server" DataSourceID="LinqDataSource13" DataTextField="nEstado" DataValueField="nEstado"  Width="100px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource13" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idEstado" Select="new (nEstado)" TableName="Estado">
                            </asp:LinqDataSource>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlEstado2" runat="server" DataSourceID="LinqDataSource1" DataTextField="nEstado" DataValueField="nEstado">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idEstado" Select="new (nEstado)" TableName="Estado">
                            </asp:LinqDataSource>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("nEstado") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Detalle Observación">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDetalleOs" runat="server" TextMode="MultiLine" Text='<%# Bind("detalleObs") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDetalleOs2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("detalleObs") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mecánico">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlPersona" runat="server" DataSourceID="LinqDataSource9" DataTextField="nPersona" DataValueField="nPersona" Width="110px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource9" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idPersona" Select="new (nPersona)" TableName="Personal">
                            </asp:LinqDataSource>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlpersona2" runat="server" DataSourceID="LinqDataSource10" DataTextField="nPersona" DataValueField="nPersona" Width="125px">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource10" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idPersona" Select="new (nPersona)" TableName="Personal">
                            </asp:LinqDataSource>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("nPersona") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#0099FF" />
                <SortedAscendingCellStyle BorderStyle="Outset" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:LinkButton ID="InsertarNuevo" runat="server" CommandName="insertar">Insertar Nuevo</asp:LinkButton>
            <asp:LinqDataSource ID="LinqSistemas" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (nSistema)" TableName="Sistema">
            </asp:LinqDataSource>
            <asp:LinqDataSource ID="lnqUnidades" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (codUnidad)" TableName="Unidad">
            </asp:LinqDataSource>
        
        </td>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>