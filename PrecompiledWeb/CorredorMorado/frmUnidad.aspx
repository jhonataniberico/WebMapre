<%@ page language="VB" autoeventwireup="false" inherits="frmUnidad, App_Web_k5hroeaa" masterpagefile="Site.master" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

   <div class="span4"> 
   
    <asp:Panel ID="Panel1" runat="server"> 
             <asp:Label ID="Label3" runat="server" Text="Unidad"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>  
    </asp:Panel>
             
    </div>    
                
   
      
  <div class="span8">

                <asp:GridView ID="GridView2"
                     runat="server"
                     AutoGenerateColumns="False"
                     CellPadding="4"
                     DataKeyNames="codUnidad" 
                    CssClass="table table-hover table-striped" 
                    OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnPageIndexChanging="GridView2_PageIndexChanging" Height="87px" Width="432px">
                
                    <Columns>
                        <asp:TemplateField HeaderText="Unidad">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCodigo" runat="server" Text='<%# Bind("codUnidad") %>' Width="70px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtCodigo2" runat="server" Width="70px"></asp:TextBox>
                            </FooterTemplate>
                            <HeaderTemplate>
                                <asp:Image ID="Image1" runat="server" Height="16px" ImageUrl="~/Images/Bus.png" Width="20px" />
                                <asp:Label ID="Label17" runat="server" Text="Unidad"></asp:Label>
                                <br />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("codUnidad") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Modelo">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlModelo" runat="server" DataSourceID="LinqDataSource1" DataTextField="nModelo" DataValueField="nModelo" Width="70px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idModelo" Select="new (nModelo)" TableName="Modelo">
                                </asp:LinqDataSource>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="ddlModelo2" runat="server" DataSourceID="LinqDataSource2" DataTextField="nModelo" DataValueField="nModelo" Width="70px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idModelo" Select="new (nModelo)" TableName="Modelo">
                                </asp:LinqDataSource>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("nModelo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Carroceria" Visible="False">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlCarroceria" runat="server" DataSourceID="LinqDataSource3" DataTextField="nCarroceria" DataValueField="nCarroceria" Width="70px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idCarroceria" Select="new (nCarroceria)" TableName="Tcarroceria">
                                </asp:LinqDataSource>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="ddlCarroceria2" runat="server" DataSourceID="LinqDataSource4" DataTextField="nCarroceria" DataValueField="nCarroceria" Width="70px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource4" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idCarroceria" Select="new (nCarroceria)" TableName="Tcarroceria">
                                </asp:LinqDataSource>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("nCarroceria") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tiponegocio" Visible="False">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlTipoNegocio" runat="server" DataSourceID="LinqDataSource9" DataTextField="nTipoNegocio" DataValueField="nTipoNegocio" Width="70px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource5" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idTipoNegocio" Select="new (nTipoNegocio)" TableName="TipoNegocio">
                                </asp:LinqDataSource>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="ddlTipoNegocio2" runat="server" DataSourceID="LinqDataSource9" DataTextField="nTipoNegocio" DataValueField="nTipoNegocio" Width="70px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource9" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="nTipoNegocio" Select="new (nTipoNegocio)" TableName="TipoNegocio">
                                </asp:LinqDataSource>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("nTiponegocio") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TipoUnidad" Visible="False">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlTipoUnidad" runat="server" DataSourceID="LinqDataSource10" DataTextField="nTipoUnidad" DataValueField="nTipoUnidad" Width="70px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource6" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idTipoUnidad" Select="new (nTipoUnidad)" TableName="TipoUnidad">
                                </asp:LinqDataSource>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="ddlTipoUnidad2" runat="server" DataSourceID="LinqDataSource10" DataTextField="nTipoUnidad" DataValueField="nTipoUnidad" Width="70px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource10" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idTipoUnidad" Select="new (nTipoUnidad)" TableName="TipoUnidad">
                                </asp:LinqDataSource>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("nTipoUnidad") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Empresa" Visible="False">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlEmpresa" runat="server" DataSourceID="LinqDataSource8" DataTextField="nEmpresa" DataValueField="idEmpresa" Width="70px">
                                </asp:DropDownList>
                                 <asp:LinqDataSource ID="LinqDataSource8" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idEmpresa" TableName="Empresa">
                                </asp:LinqDataSource>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="ddlEmpresa2" runat="server" DataSourceID="LinqDataSource7" DataTextField="nEmpresa" DataValueField="nEmpresa" Width="70px">
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource7" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" OrderBy="idEmpresa" Select="new (nEmpresa)" TableName="Empresa">
                                </asp:LinqDataSource>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("nEmpresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="placa">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPlaca" runat="server" Text='<%# Bind("placa") %>' Width="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtPlaca2" runat="server" Text='<%# Bind("placa") %>' Width="50px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("placa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="año" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtAnio" runat="server" Text='<%# Bind("año") %>' Width="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtAnio2" runat="server" Text='<%# Bind("año") %>' Width="50px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("año") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="kmRecorrido">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtRecorrido" runat="server" Text='<%# Bind("kmRecorrido") %>' Width="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtRecorrido2" runat="server" Text='<%# Bind("kmRecorrido") %>' Width="50px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("kmRecorrido") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="asiento" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtAsiento" runat="server" Text='<%# Bind("asiento") %>' Width="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtAsiento2" runat="server" Text='<%# Bind("asiento") %>' Width="50px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("asiento") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="eje" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEje" runat="server" Text='<%# Bind("eje") %>' Width="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEje2" runat="server" Text='<%# Bind("eje") %>' Width="50px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("eje") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="fecha" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtFecha" runat="server" Text='<%# Bind("fecha") %>' TextMode="Date" Width="70px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtFecha2" runat="server" Text='<%# Bind("fecha") %>' TextMode="Date" Width="70px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("fecha") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="chasis" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtChasis" runat="server" Text='<%# Bind("chasis") %>' Width="70px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtChasis2" runat="server" Text='<%# Bind("chasis") %>' Width="70px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text='<%# Bind("chasis") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="estado" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEstado" runat="server" Text='<%# Bind("estado") %>' Width="70px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEstado2" runat="server" Text='<%# Bind("estado") %>' Width="70px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label15" runat="server" Text='<%# Bind("estado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Select" ImageUrl="~/Images/details.png" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                
                </asp:GridView>
   
    <div class="span12">
        </div>
         </di>       
   
      
  

                            
                <li><<a href="ASPxPopupControl1"><img src="Images/checkin.png" class="icono" />Alertas</a></li><dx:ASPxPopupControl ID="ASPxPopupControl2" runat="server" HeaderText="Detalle de Unidad" Height="394px" Theme="MetropolisBlue" Width="474px">
                    <FooterStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ContentCollection>
<dx:PopupControlContentControl runat="server"><a class="brand" href="default.aspx">
    <img src="images/logo.png"></img></a><br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" CssClass="table table-hover table-striped" ForeColor="#333333" Height="16px" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ref" HeaderText="Referencia" />
            <asp:BoundField DataField="nCarroceria" HeaderText="Carroceria" />
            <asp:BoundField DataField="nTipoNegocio" HeaderText="Negocio" />
            <asp:BoundField DataField="nTipoUnidad" HeaderText="Tipo de Unidad" />
            <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" />
            <asp:BoundField DataField="año" HeaderText="Año" />
            <asp:BoundField DataField="asiento" HeaderText="Asientos" />
            <asp:BoundField DataField="eje" HeaderText="Ejes" />
            <asp:BoundField DataField="fecha" HeaderText="Fecha" />
            <asp:BoundField DataField="chasis" HeaderText="Chasis" />
            <asp:BoundField DataField="estado" HeaderText="Estado" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A2793" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <asp:Label ID="Label16" runat="server" CssClass="text-center" EnableTheming="True" Text="DETALLE UNIDAD"></asp:Label>
        </HeaderTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
                        </dx:PopupControlContentControl>
</ContentCollection>
                    </dx:ASPxPopupControl>
&nbsp;<dx:ASPxButton ID="ASPxButton1" runat="server" Text="ASPxButton" Theme="MetropolisBlue">
                </dx:ASPxButton>
                <br />
                <br />
                
       
   
      
  

                            
</asp:Content>