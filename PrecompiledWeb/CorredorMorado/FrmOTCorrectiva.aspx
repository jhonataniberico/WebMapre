<%@ page language="VB" autoeventwireup="false" inherits="frmIngreso, App_Web_fcuivbnv" masterpagefile="Site.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 
    <style type="text/css">
        .checkboxFour {
            margin-top: 0px;
        }
        .auto-style7 {
            height: 38px;
        }
        .auto-style9 {
            height: 28px;
            width: 493px;
        }
        .auto-style10 {
            width: 493px;
        }
        .auto-style11 {
            height: 28px;
            width: 101px;
        }
        .auto-style12 {
            width: 101px;
        }
        .auto-style13 {
            height: 11px;
        }
        .auto-style14 {
            height: 28px;
            width: 59px;
        }
        .auto-style15 {
            width: 59px;
        }
        </style>
    </asp:Content>

   
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
          
        <div class="row-fluid">
       
    <div class="span12"><h4 style="text-align:center;">GENERACION OT MANUALES</h4></div>  
         <div class="span12">

          <table class="table table" border="0" draggable="false">
                   <tr><th  colspan="3" class="auto-style13">FECHA<asp:TextBox ID="lblFecha" runat="server" CssClass="text-center" AutoPostBack="True" TextMode="Date"></asp:TextBox>
                                                                                         
                                              </th></tr>
               <tr>
                        <td class="auto-style14">&nbsp;<asp:Label ID="lblFecha2" runat="server" ForeColor="#990000" Height="20px" Width="29px"></asp:Label>
                                                                                              
                                              <td rowspan="1" colspan="1" class="auto-style9">

                                                  &nbsp; Kilometraje&nbsp;&nbsp;&nbsp; :
                                                 &nbsp;&nbsp;&nbsp;
                                                 <asp:Label ID="txtKmSistema" runat="server" ForeColor="#990000" Height="20px" Width="89px"></asp:Label>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Fecha:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                 <asp:Label ID="lblCheckin" runat="server" ForeColor="#990000" Height="20px" Width="123px"></asp:Label>
                                                  <br />
                                             
                                            </td>
                   <td class="auto-style11">

                       &nbsp;</td>
               </tr>
                       <tr> <td class="auto-style15">
                                             
                                            </td>
                           <td class="auto-style10"> &nbsp; Unidad/Veh&nbsp;
                                                  <asp:DropDownList ID="ddlUnidad" runat="server" AutoPostBack="True" CssClass="text-center" Font-Size="Larger" Width="166px" Height="47px">
        </asp:DropDownList>
                                             
                                              <br />
                               Falla o Averia<asp:textbox ID="txtobs" runat="server" Width="326px" BackColor="White"  
                                   BorderColor="#006600" ForeColor="black" Height="44px" ></asp:textbox>&nbsp;<asp:ImageButton ID="btnSave" runat="server" Height="24px" ImageUrl="~/Images/Save-icon24.png" />
                                            </td> 
                             
                          <td class="auto-style12">

                       <img alt="Bus" src="Images/unidades.png" class="img-circle"/></td>
                               
                  <tr><th id="Encabezado2"  colspan="3" class="auto-style7">ORDENES GENERADAS</th></tr>
              <tr>
                                             <td colspan="3">
     <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CodOT" CssClass="table table-hover table-striped" AllowSorting="True" EnableTheming="True" BackColor="#FFFFCC" Width="682px">
                <Columns>
                    <asp:BoundField DataField="CodOT" HeaderText="CodOT" ReadOnly="True" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" Visible="False" DataFormatString="{0:dd/MM/yyyy}" ReadOnly="True" />
                    <asp:BoundField DataField="CodUnidad" HeaderText="Unidad" ReadOnly="True" />
                     <asp:BoundField DataField="Ref" HeaderText="Ref" />
                     <asp:BoundField DataField="kmIntervencion" HeaderText="Km Sistema" />
                    <asp:BoundField DataField="obs" HeaderText="Averia/Falla" />
                    <asp:BoundField DataField="nEmpresa" HeaderText="Empresa" />
                    <asp:BoundField DataField="nTipoOT" HeaderText="TipoOT" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nComponente" HeaderText="Tipo de Mantenimiento" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="TiempoProg" HeaderText="TiempoProg" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nEstadoOT" HeaderText="EstadoOT" />
                </Columns>
                <HeaderStyle BackColor="#384a2793" />
                <SortedAscendingCellStyle BorderStyle="Outset" />
            </asp:GridView>
   
  
                                             </td>   
                      </tr>
                 
                       
                              <tr>           
                        
                       
                     
                        <TH colspan="3" > 
                            &nbsp;</TH>
                    </tr>  
                       
                    
                    </table>
        <hr />
   
     
   
            </div></div>
        <br/>
           
     
   
            </asp:Content>