<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>

<!DOCTYPE html>
<script runat="server">
string centername = "";
string centerurl = "";
string active = "";


protected void Page_Load(object sender, EventArgs e)
{
    SqlDataSource1.SelectCommand = "SELECT * FROM livetable";

    DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    DataTable dt = new DataTable();
    dt = dv.ToTable();

    if (dt.Rows.Count != 0)
    {
        centername = dt.Rows[0].Field<string>("centername"); //usethis to get field value
        centerurl = dt.Rows[0].Field<string>("centerurl"); //usethis to get field value
        active = dt.Rows[0].Field<string>("active"); //usethis to get field value
        Label4.Text = centername;
    }
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hyderabaat Live</title>
</head>
<body style="background-color:black;">
    <form id="form1" runat="server">
        <div style="text-align:center; position:absolute; z-index:1200; top: 500px; left: 8px; width: 157px; height: 42px;"><script type="text/javascript" src="http://services.webestools.com/cpt_visits/9195-11-5.js"></script></div><a href="http://www.webestools.com/" style="display:block;text-align:center;" title="Tools services webmasters counters generators scripts tutorials free"><img src="http://www.webestools.com/images/ban03.gif" alt="Tools services webmasters counters generators scripts tutorials free" /></a>
    <div style="position:absolute; z-index:1000; width: 78%; height: 85%; top: 1%; left: 22%;">
        <iframe src='<%=centerurl%>' style="z-index:1;  position:absolute; width: 100%; height: 100%; top: 0%; left: 0%; overflow: hidden;" > 
        </iframe>
    <asp:Label ID="Label6" runat="server" style="z-index: 1001; left:0%; top: 0%; width:100%; height:8%; position: absolute" ForeColor="Black" BackColor="Black" ></asp:Label>
   <asp:Label ID="Label7" runat="server" style="z-index: 1002; left:0%; top: 0%; width:100%; height:8%; position: absolute" ForeColor="white"  Text="hyderabaat Live " BackColor="Black"  Font-Size="26" Font-Names="Samarkan Normal"></asp:Label>
    <asp:Label ID="Label4" runat="server" style="z-index: 1002; left:30%; top: 0%; width:100%; height:8%; position: absolute" ForeColor="white"  Text="" BackColor="Black"  Font-Size="20" Font-Names="Samarkan Normal"></asp:Label>
  
         

    </div>
       <asp:Label ID="Label1" runat="server" style="z-index: 1004; left: 1%; top: 4%; position: absolute; height: 23px; visibility:hidden;" Text="Shilpa Ram cultural program"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1004; left: 1%; top: 30%; position: absolute; height: 41px; width: 63px;visibility:hidden;" Text="xuz"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1004; left: 1%; top: 13%; position: absolute;visibility:hidden;" Text="Ravidrabharathi cultural program"></asp:Label>
        
       
        <asp:Label ID="Label5" runat="server" style="z-index: 1004; left: 142px; top: 194px; position: absolute" Text="Live" ForeColor="Red" ></asp:Label>
   
         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hyderabaatnews.jpg" style="z-index: 1; left: 4px; top: 17px; position: absolute; width: 167px" />
   
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:10e2b01f-703e-4731-8865-a471005ed57eConnectionString %>" SelectCommand="SELECT * FROM [livetable]"></asp:SqlDataSource>
   
         </form>
</body>
</html>
