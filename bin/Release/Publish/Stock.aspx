<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="InventoryM.Stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
</head>
<body style="background-image:url('Img/dashboardbackground.jpg')">
    <form id="form1" runat="server">
        
        <p style ="text-align:right">
            <asp:Label ID="Label9" runat="server" Text="User Name" Font-Bold="True"></asp:Label>
            <asp:Button ID="ButtonLogout" runat="server" BackColor="#0F83DA" Height="33px" OnClick="Button1_Click" Text="Log Out" BorderColor="#663300" ForeColor="#CC3300" />
        </p>
        <asp:GridView ID="GridView1" runat="server" Width="326px">
        </asp:GridView>
    </form>
       
</body>
</html>
