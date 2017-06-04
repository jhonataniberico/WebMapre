<%@ page language="VB" autoeventwireup="false" inherits="FrmNoProgramados, App_Web_aofv2bk4" masterpagefile="Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 
    <style type="text/css">
        .auto-style1 {
            width: 188px;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style3 {
            width: 182px;
        }
        .auto-style4 {
            width: 181px;
        }
        .auto-style5 {
            width: 143px;
        }
    </style>
 
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
       <div class="tabbable"> <!-- Only required for left/right tabs -->
    <ul class="nav nav-tabs">
    <li class="active"><a href="#tab1" data-toggle="tab">Mantenimiento no Programado</a></li>
       </ul>
    <div class="tab-content">
    <div class="tab-pane  active" id="tab1">
<%--  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Cerrar</span></button>
        <h4 class="modal-title" id="myModalLabel">Mantenimiento</h4>
      </div>
      <div class="modal-body">--%>
 <%--       <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert">
            
            <InsertItemTemplate>--%>
          <table class="table table" border="0" draggable="false">
                    <tr>
                        <th class="success">Unidad:</th>
                        <td class="auto-style1"> <asp:DropDownList ID="ddlCodUnidad" runat="server"  AutoPostBack="True"></asp:DropDownList></td>
                        <th>Km Intervencion</th>
                        <td class="auto-style5"> <asp:textbox ID="lblKmIntervencion" runat="server" ReadOnly="True" Width="97px" BackColor="#0066FF"  BorderColor="Yellow" ForeColor="White" TextMode="Number"></asp:textbox></td>
                       <th>Personal:</th>
                        <td class="auto-style4">   
                            <asp:DropDownList ID="ddlPersonal" runat="server" Width="134px">
                            </asp:DropDownList>
                            </td>
                        </tr>
                   <tr>
                                            <th class="auto-style6">Sistema:</th>
                        <td class="auto-style1"> 
                            <asp:DropDownList ID="ddlSistema" runat="server" Width="136px"></asp:DropDownList>
                                            </td>
                         <th class="auto-style6">Fecha:</th>
                        <td class="auto-style5"> <asp:textbox ID="lblFecha" runat="server" Width="108px" BackColor="#0066FF" BorderColor="Yellow" ForeColor="White" TextMode="Date" Font-Size="8.5pt" ></asp:textbox></td>
                      <th>Requerimiento<br />
                               de Repuesto</th>
                        <td class="auto-style8">  
                         <asp:TextBox ID="txtRepuesto" runat="server" Height="50px" TextMode="MultiLine" Width="204px"></asp:TextBox>
                                            </td>
                        </tr>
                       
                              <tr>           
                        
                        <th class="auto-style2">Detalle de
                            <br />
                            Mantenimiento</th>
                        <td class="auto-style3" colspan="3"> 
                            <asp:textbox ID="txtDetalleMant" runat="server" Height="70px" TextMode="MultiLine" Width="250px"></asp:textbox>
                                                         </td>
                        <th class="auto-style2">Detalle Electricista</th>
                        <td class="auto-style3"> 
                            <asp:textbox ID="txtElectricista" runat="server" Height="70px" TextMode="MultiLine" Width="250px"></asp:textbox>
                                                         </td>
                    </tr>  
                       
                              <tr>           
                        
                        <th class="auto-style2">Ocurrencias</th>
                        <td class="auto-style3" colspan="3"> 
                            <asp:textbox ID="txtOcurrencia" runat="server" Height="70px" TextMode="MultiLine" Width="250px"></asp:textbox>
                                                         </td>
                        <th class="auto-style2">Detalle Carrocero</th>
                        <td class="auto-style3"> 
                            <asp:textbox ID="txtCarrocero" runat="server" Height="70px" TextMode="MultiLine" Width="250px"></asp:textbox>
                                                         </td>
                    </tr>  
                     <tr>
                                            
                        
                         <th>Estado</th>
                        <td class="auto-style1">  
                            <asp:DropDownList ID="ddlEstado" runat="server" Width="142px">
                            </asp:DropDownList>
                            </td>
                           <th>&nbsp;</th>
                          <td class="auto-style5"> 
                           <asp:ImageButton ID="ImageButton6" runat="server" CommandName="insert" ImageUrl="~/Images/Save-icon.png" />
                           
                            <asp:ImageButton ID="ImageButton8" runat="server" Height="32px" ImageUrl="~/Images/details2.png" Width="32px" />
                           
                            <asp:ImageButton ID="ImageButton5" runat="server" Height="48px" ImageUrl="~/Images/excel.png" Width="48px" />
                           
                          </td>
                          <td class="auto-style4"> 
                              <asp:textbox ID="lblFechaC" runat="server" TextMode="Date" ></asp:textbox></td>
                          <td class="auto-style4"> 
                            <asp:ImageButton ID="ImageButton7" runat="server" Height="32px" ImageUrl="~/Images/search.png" />
                         </td>
                        </tr>
                    </table>
           
     
        <%--        </InsertItemTemplate>
        </asp:FormView>--%>
  <%--<%--    <%--</div>--%>
    <%--  <div class="modal-footer">
     <%--   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>--%>
        
        
           <br />
  
   
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idIngreso" CssClass="table table-hover table-striped" AllowSorting="True" EnableTheming="True">
                <Columns>
                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" />
                    <asp:BoundField HeaderText="Sistema" DataField="nSistema" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" ReadOnly="True" />
                    <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" Visible="False" />
                    <asp:BoundField HeaderText="Km Intervencion" DataField="kmIntervencion" />
                    <asp:BoundField HeaderText="Obs" DataField="detalleObs" />
                    <asp:BoundField HeaderText="Cargo" DataField="nPersona" />
                    <asp:BoundField HeaderText="Personal de Apoyo" DataField="tecnicoApoyo" />
                </Columns>
                <HeaderStyle BackColor="#384a2793" />
                <SortedAscendingCellStyle BorderStyle="Outset" />
            </asp:GridView>
  

        </div>
   
    </div>
    </div>
     
   
            </asp:Content>