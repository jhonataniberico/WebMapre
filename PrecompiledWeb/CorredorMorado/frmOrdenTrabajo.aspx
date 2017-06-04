<%@ page language="VB" autoeventwireup="false" inherits="frmOrdenTrabajo, App_Web_o1ayshfk" masterpagefile="Site.master" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>



<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <h3>Impresion de OT</h3>
 


                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="96px"></asp:TextBox>
            
               
             <%--   <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1269px" ReportSourceID="RptOrdenTrabajo" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="800px" BestFitPage="False" DisplayStatusbar="False" DisplayToolbar="False" HasCrystalLogo="False" HasDrilldownTabs="False" PageZoomFactor="70" SeparatePages="False" ToolPanelView="None" />
                <CR:CrystalReportSource ID="RptOrdenTrabajo" runat="server">
                    <Report FileName="FrmReporteOrdenTra.rpt">
                    </Report>
                </CR:CrystalReportSource>--%>
                         </td>
           


 

</asp:Content>