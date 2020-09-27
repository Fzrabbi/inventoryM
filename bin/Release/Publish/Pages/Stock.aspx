<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="InventoryM.Pages.Stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
  transition: background-color .5s;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover{
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}
#main {
  transition: margin-left .5s;
  padding: 16px;
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

    .auto-style2 {
        height: 20px;
    }

    .auto-style3 {
        width: 442px;
        height: 43px;
        margin-bottom: 0px;
    }

    .auto-style4 {
        height: 20px;
        width: 272px;
    }
    .auto-style5 {
        width: 272px;
    }

    .auto-style6 {
        height: 63px;
        width: 272px;
    }

    .auto-style7 {
        width: 272px;
        height: 42px;
    }
    .auto-style8 {
        height: 42px;
    }

</style>
</head>
<body style="background-image:url('../Img/dashboardbackground.jpg')">
 <form id="form1" runat="server">

<div id="mySidenav" class="sidenav">

    <div style="text-align:center">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Img/user.png" Width="119px" OnClick="ImageButton1_Click" />
        <br />
           <asp:Label ID="Label9" runat="server" Text="User Name" Font-Bold="True" ForeColor="#818181"></asp:Label>
        <br />
           <asp:Button ID="ButtonLogOut" runat="server" CssClass="btn-danger" OnClick="ButtonLogOut_Click1" Text="Log Out" />
        <br/>
    </div>
         &nbsp;<br/>
      <a href="Stock.aspx">Stock</a>&nbsp;
      <br/>
      <a href="#">Buy</a>
      <br/>
      <a href="Sell.aspx">Sell</a>
      <br/>
      <a href="Client.aspx">Clients</a>
      <br/>
      <a href="Company.aspx">Company</a>
      <br/>
      <a href="Dvman.aspx">Delevery Man</a>

         <br/>
         <br/>
         <br />
         <br />
     

      <p>
           &nbsp;</p>
</div>
<div id="main">
      <span style="font-size:50px;cursor:pointer" onclick="openNav()">&#9776; Stock</span>
      
     <br/>
        <br/>
        <br />
    <div style="display:flex">
        <div>
        <table class="auto-style3 p-5">
            <tr>
                <td class="auto-style6" style="text-align:center">
                    <asp:Label ID="Label13" runat="server" Text="Add New Product" Font-Bold="True" Font-Size="Larger"></asp:Label>
                </td>
                
                
            </tr>

            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Text="Product name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                </td>
                
            </tr
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Text="Company Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="companyName" DataValueField="companyName" Width="300px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" SelectCommand="SELECT [companyName] FROM [companys]"></asp:SqlDataSource>
            </td>
                
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Buying Price"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Selling Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Initial Qty"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
                </td>
                
            </tr>
             <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="Product Detail"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox7" runat="server" Width="300px" Height="48px"></asp:TextBox>
                 </td>
                
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" Width="300px" />
                 </td>
                
            </tr>
     </table>
    </div>
    <div class="auto-style3 p-5">
        <div style="text-align:center" class="pb-3">
            <td class="auto-style3" >
                        <asp:Label ID="Label5" runat="server" Text="All Products" Font-Bold="True" Font-Size="Larger"></asp:Label>
            </td>
        </div>
        <div style="width: 1000px; height: 300px; overflow:auto;">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="993px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" ForeColor="#333333" GridLines="None" DataKeyNames="id" DataSourceID="SqlDataSource1" PageSize="20" CaptionAlign="Top" CellSpacing="4">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                    <ControlStyle BackColor="Black" />
                    <ItemStyle BackColor="#CCFFFF" Width="30px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Product Name" SortExpression="name" />
                    <asp:BoundField DataField="company" HeaderText="Company" SortExpression="company" />
                    <asp:BoundField DataField="buy_price" HeaderText="Buy Price" SortExpression="buy_price" ReadOnly="True" />
                    <asp:BoundField DataField="sell_price" HeaderText="Sell Price" SortExpression="sell_price" />
                    <asp:BoundField DataField="qty" HeaderText="Qty" SortExpression="qty" ReadOnly="True" />
                    <asp:BoundField DataField="detail" HeaderText="Detail" SortExpression="detail" />
                    
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" ForeColor="White" Font-Bold="True" />
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" DeleteCommand="DELETE FROM [products] WHERE [id] = @original_id AND [name] = @original_name AND [company] = @original_company AND [buy_price] = @original_buy_price AND [sell_price] = @original_sell_price AND [qty] = @original_qty AND (([detail] = @original_detail) OR ([detail] IS NULL AND @original_detail IS NULL)) AND (([created_at] = @original_created_at) OR ([created_at] IS NULL AND @original_created_at IS NULL))" InsertCommand="INSERT INTO [products] ([name], [company], [buy_price], [sell_price], [qty], [detail], [created_at]) VALUES (@name, @company, @buy_price, @sell_price, @qty, @detail, @created_at)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [name] = @name, [company] = @company,  [sell_price] = @sell_price,  [detail] = @detail, [created_at] = @created_at WHERE [id] = @original_id AND [name] = @original_name AND [company] = @original_company  AND [sell_price] = @original_sell_price AND (([detail] = @original_detail) OR ([detail] IS NULL AND @original_detail IS NULL)) AND (([created_at] = @original_created_at) OR ([created_at] IS NULL AND @original_created_at IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_company" Type="String" />
                    <asp:Parameter Name="original_buy_price" Type="Decimal" />
                    <asp:Parameter Name="original_sell_price" Type="Decimal" />
                    <asp:Parameter Name="original_qty" Type="Int32" />
                    <asp:Parameter Name="original_detail" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_created_at" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="company" Type="String" />
                    <asp:Parameter Name="buy_price" Type="Decimal" />
                    <asp:Parameter Name="sell_price" Type="Decimal" />
                    <asp:Parameter Name="qty" Type="Int32" />
                    <asp:Parameter Name="detail" Type="String" />
                    <asp:Parameter DbType="Date" Name="created_at" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="company" Type="String" />
                    <asp:Parameter Name="buy_price" Type="Decimal" />
                    <asp:Parameter Name="sell_price" Type="Decimal" />
                    <asp:Parameter Name="qty" Type="Int32" />
                    <asp:Parameter Name="detail" Type="String" />
                    <asp:Parameter DbType="Date" Name="created_at" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_company" Type="String" />
                    <asp:Parameter Name="original_buy_price" Type="Decimal" />
                    <asp:Parameter Name="original_sell_price" Type="Decimal" />
                    <asp:Parameter Name="original_qty" Type="Int32" />
                    <asp:Parameter Name="original_detail" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_created_at" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
     </div>
  </div>

    
 
</div>

<script>
    function openNav() {
        document.getElementById("mySidenav").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
        document.getElementById("buy1").style.marginLeft = "250px";
        document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
        document.getElementById("buy1").style.marginLeft = "250px";
        document.body.style.backgroundColor = "white";
    }
</script>

        
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </form>
       
</body>
</html>
