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
    
}

protected void Button2_Click(object sender, EventArgs e)
{
    SqlDataSource1.SelectCommand = "SELECT * FROM livetable";

    SqlDataSource1.UpdateCommand = "UPDATE livetable SET centername='" + TextBox2.Text + ", centerurl=" + TextBox3.Text + ",active=" + TextBox4.Text;
    SqlDataSource1.Update();
    Label6.Text = "updated successfully";
}
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 45px; width: 843px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 257px; top: 277px; position: absolute" Text="Shilpa Ram cultural program"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 258px; top: 335px; position: absolute; width: 336px;" Text="xuz"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 257px; top: 234px; position: absolute" Text="Ravidrabharathi cultural program"></asp:Label>
        
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 372px; top: 32px; position: absolute" Text="hyderabaatlive"></asp:Label>

        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 471px; top: 234px; position: absolute" Text="Live" ForeColor="Red" ></asp:Label>
   
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 555px; top: 86px; position: absolute" Text="Password" ForeColor="Red" ></asp:Label>
        
         <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 630px; top: 84px; position: absolute; width: 190px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 685px; top: 126px; position: absolute" Text="Submit" />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:10e2b01f-703e-4731-8865-a471005ed57eConnectionString %>" SelectCommand="SELECT * FROM [livetable]" UpdateCommand="UPDATE livetable SET centername = N'1', centerurl = N'1', active = N'1'"></asp:SqlDataSource>
   
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 0px; top: 70px; position: absolute; width: 190px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 2px; top: 110px; position: absolute; width: 503px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 6px; top: 155px; position: absolute; width: 86px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 7px; top: 197px; position: absolute" Text="Update" OnClick="Button2_Click" />
         </form>
</body>
</html>
