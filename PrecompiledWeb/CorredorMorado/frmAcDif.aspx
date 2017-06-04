<%@ page language="VB" autoeventwireup="false" inherits="frmAcDif, App_Web_aofv2bk4" masterpagefile="~/Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
       
    <h3>Aceite Diferencial</h3>
   <div class="span4">  <p>
        <asp:Label ID="Label3" runat="server" Text="Unidad"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="text-center" Font-Size="Larger" Width="166px" Height="47px">
        </asp:DropDownList>
<%--       <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Images/excel.png" Width="48px" />--%>
    </p>
   </div>
     <div class="span8">

      
            <asp:GridView 
                ID="GridView3" 
                runat="server"
                 AutoGenerateColumns="False"
                 CellPadding="4"
                 DataKeyNames="idDetalleMant"

                 CssClass="table table-hover table-striped"
                         OnSelectedIndexChanged="GridView3_SelectedIndexChanged" 
                 AllowSorting="True"
                 EnableTheming="True">
                <Columns>
                    <asp:BoundField DataField="idDetalleMant" HeaderText="idMant" Visible="False" />
                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" />
                    <asp:BoundField DataField="Marca" HeaderText="Ref." />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="KmIntervencion" HeaderText="Km Inter" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Select" ImageUrl="~/Images/details.png" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#384a2793" />
                <SortedAscendingCellStyle BorderStyle="Outset" />
            </asp:GridView>
    <div class="span12">
     <asp:DetailsView ID="DetailsView1"
                     runat="server" 
                     Height="16px" CellPadding="4" ForeColor="#333333" AutoGenerateRows="False" CssClass="table table-hover table-striped">
           <AlternatingRowStyle BackColor="White" />
           <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
           <EditRowStyle BackColor="#2461BF" />
           <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
           <Fields>
               <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" />
               <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
<asp:BoundField DataField="CodOT" HeaderText="CodOT"></asp:BoundField>
               <asp:BoundField DataField="detalleObs" HeaderText="Observacion" />
               <asp:BoundField DataField="nPersona" HeaderText="Técnico Responsable" />
               <asp:BoundField DataField="tecnicoApoyo" HeaderText="Técnico de Apoyo" />
               <asp:BoundField DataField="horaInicio" HeaderText="Hora de Inicio" />
               <asp:BoundField DataField="horaFin" HeaderText="Hora de Termino" />
           </Fields>
           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#384a2793" Font-Bold="True" ForeColor="White" />
           <HeaderTemplate>
               <asp:Label ID="Label16" runat="server" CssClass="text-center" EnableTheming="True" Text="DETALLE UNIDAD"></asp:Label>
           </HeaderTemplate>
           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
        </div>
      </div>          


    <br />

                       
   
      
  

                            
</asp:Content>