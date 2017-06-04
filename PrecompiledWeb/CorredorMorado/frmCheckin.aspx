<%@ page language="VB" autoeventwireup="false" inherits="frmIngreso, App_Web_hd3brtal" masterpagefile="Site.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 
    <style type="text/css">
        .checkboxFour {
            margin-top: 0px;
        }
        </style>
  <%--  <script type="text/javascript">
         $(document).ready(function () {
             $('#BtnOcultar').click(function () {
                 //3000 is a time duration(in ms) for transition
                 $('#Ocultar').fadeOut('fast');
             
                             });
         });
    </script>  --%>
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
          
        <div class="row-fluid">
       
    <div class="span12"><h4 style="text-align:center;">CHECK_IN DE VIAJE</h4></div>  
         <div class="span12">

             <div class="span4" style="overflow:scroll;">        
                 <h4 style="text-align:center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblFecha0" runat="server" CssClass="text-center" Text="Fecha"></asp:Label>   <asp:TextBox ID="lblFecha" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date"></asp:TextBox>
   
               &nbsp;<asp:Label ID="lblCheckin" runat="server" ForeColor="#990000" Height="22px" Width="115px"></asp:Label>

                                                  UNIDAD<asp:DropDownList ID="ddlUnidad" runat="server" AutoPostBack="True" CssClass="text-center" Font-Size="Larger" Width="166px" Height="47px">
        </asp:DropDownList>
   
               </h4>
                 <p style="text-align:center">
                     &nbsp;</p>
               <h4 style="text-align:center">
                   Seleccion de Sistema</h4>
               <asp:GridView ID="GridView3" 
                   runat="server" 
                   AutoGenerateColumns="False"
                    CellPadding="4"
                    CssClass="table table-hover table-striped"
                    AllowSorting="True"
                    EnableTheming="True" ForeColor="#333333" GridLines="None" DataKeyNames="CodOT">
                   <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" >
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}" Visible="True"/>
                    <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" Visible="False" />
                    <asp:BoundField DataField="nTipoOT" HeaderText="Tipo OT" Visible="False"/>
                    <asp:BoundField DataField="nEstadoOT" HeaderText="Estado" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" Visible="False" />
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
   
  
   
  
                 <asp:textbox ID="txtObs" runat="server" Width="251px" BackColor="White"  
                                   BorderColor="#006600" ForeColor="black" Height="59px" TextMode="MultiLine" ></asp:textbox>
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="btnSave" runat="server" Height="24px" ImageUrl="~/Images/CHECK_NEGRO2.png" />
   
  
   
  
          </div>
            </div>
            <br />
        </div>
        <br/>
        <hr />
   
     
   
            </asp:Content>