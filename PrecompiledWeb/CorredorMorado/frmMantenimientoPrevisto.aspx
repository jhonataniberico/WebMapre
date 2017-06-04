<%@ page language="VB" autoeventwireup="false" inherits="frmDetalleMant, App_Web_hd3brtal" masterpagefile="Site.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style5 {
        width: 183px;
    }
    .auto-style6 {
        width: 500px;
    }
    </style>
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table >
        <tr>
            <td class="auto-style5"> <asp:Label ID="Label5" runat="server" Text="Buscar por Unidad" Font-Bold="True" Font-Italic="False"></asp:Label>
               <br />  
                <asp:DropDownList ID="ddUnidades" runat="server" DataSourceID="lnqUnidades" DataTextField="codUnidad" DataValueField="codUnidad" Width="134px" Height="26px">
                </asp:DropDownList>
                <asp:LinqDataSource ID="lnqUnidades" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (codUnidad)" TableName="Unidad">
                </asp:LinqDataSource>
                </td>
            <td class="auto-style6">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="False" Text="Buscar por Fecha:"></asp:Label>
                <br />
                <asp:TextBox ID="txtBuscaFecha" runat="server" Width="134px" TextMode="Date"></asp:TextBox>
&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Buscar Mecanico"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlMecanico" runat="server" DataSourceID="linqMecanico" DataTextField="nPersona" DataValueField="nPersona" Height="28px" Width="122px">
                </asp:DropDownList>
                <asp:LinqDataSource ID="linqMecanico" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idPersona" Select="new (nPersona)" TableName="Personal">
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3">
          
      
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idDetalleMant" CssClass="table table-hover table-striped" Width="1000px">
                 
                    <Columns>
                        <asp:BoundField DataField="idDetalleMant" HeaderText="Id" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Fecha">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtFecha" runat="server" Text='<%# Bind("fecha") %>' TextMode="Date" Width="120px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                               <asp:TextBox ID="txtFecha2" runat="server" Text='<%# Bind("fecha") %>' TextMode="Date" Width="120px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fecha") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Unidad">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("codUnidad") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OT">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlOT" runat="server" DataSourceID="LinqDataSource5" DataTextField="codOt" DataValueField="codOt" Width="100px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource5" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="codOt" Select="new (codOt)" TableName="Ot">
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
                            <EditItemTemplate>
                                <asp:TextBox ID="txtKmIntervencion" runat="server" Text='<%# Bind("kmIntervencion") %>' Width="100px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtKmIntervencion2" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("kmIntervencion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sistema">
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
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="lnkInsertar" runat="server" CommandName="insertar" ForeColor="White">Insertar</asp:LinkButton>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                
                    <HeaderStyle BackColor="#0099FF" />
                
                </asp:GridView>
        
                </td>
        </tr>
        <tr>
            <td class="auto-style5">
          
      
                <asp:LinkButton ID="InsertarNuevo" runat="server" CommandName="insertar">Insertar Nuevo</asp:LinkButton>
      

            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
          
      
                </asp:Content>