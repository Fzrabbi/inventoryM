<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="InventoryM.Pages.Client" %>

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
        margin-right: 0px;
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
      <span style="font-size:50px;cursor:pointer" onclick="openNav()">&#9776; Client</span>
      
     <br/>
        <br/>
        <br />
        <div class="auto-style3 p-5" style="display:flex">
            <div>
                    <table class="auto-style3 p-5">
                        <tr>
                            <td class="auto-style6" style="text-align:center">
                                <asp:Label ID="Label13" runat="server" Text="Add New Client" Font-Bold="True"></asp:Label>
                            </td>
                
                
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label10" runat="server" Text="Customer Name"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                            </td>
                
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label11" runat="server" Text="Initial Balance"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                            </td>
                
                        </tr
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label12" runat="server" Text="Area Name"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="name" Width="300px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" SelectCommand="SELECT [name] FROM [area]"></asp:SqlDataSource>
                        </td>
                
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label4" runat="server" Text="Full Address"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                            </td>
                
                        </tr
                       <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label6" runat="server" Text="Phone no"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                            </td>
                
                        </tr
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label7" runat="server" Text="Contact Person"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
                            </td>
                
                        </tr
                        <tr>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" Width="300px" />
                             </td>
                
                        </tr>
                    </table>
            <div>
                    //add area
                <table class="auto-style3 p-5">
                    <tr>
                            <td class="auto-style6" style="text-align:center">
                                <asp:Label ID="Label1" runat="server" Text="Add Area" Font-Bold="True"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label2" runat="server" Text="Area Name"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ADD" Width="300px" />
                             </td>
                
                     </tr>
                </table>
            </div> 
            <div class="auto-style3" style="padding-left:138px; padding-top:25px;">
                 <div class="pb-3">
                        <td class="auto-style3" >
                                    <asp:Label ID="Label3" runat="server" Text="List of Areas" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        </td>
                 </div>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="218px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="code" HeaderText="code" InsertVisible="False" ReadOnly="True" SortExpression="code" >
                        <ItemStyle Width="45px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" DeleteCommand="DELETE FROM [area] WHERE [code] = @code" InsertCommand="INSERT INTO [area] ([name]) VALUES (@name)" SelectCommand="SELECT * FROM [area]" UpdateCommand="UPDATE [area] SET [name] = @name WHERE [code] = @code">
                    <DeleteParameters>
                        <asp:Parameter Name="name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="code" Type="Int32" />
                        <asp:Parameter Name="name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>    
            </div>
            
            <div class="auto-style3 p-5">
                 <div style="text-align:center" class="pb-3">
                        <td class="auto-style3" >
                                    <asp:Label ID="Label5" runat="server" Text="All Clients" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        </td>
                 </div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="793px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style7" Height="16px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" HeaderText="Action" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle Width="180px" HorizontalAlign="Left" />
                        </asp:CommandField>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle ForeColor="Black" Width="50px" HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="customer_name" HeaderText="Shop Name" SortExpression="customer_name" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="customer_address" HeaderText="Shop Address" SortExpression="customer_address" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" Width="220px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="customer_phone" HeaderText="Phone no" SortExpression="customer_phone" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle Width="120px" HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="customer_contact_person" HeaderText="Contact Person" SortExpression="customer_contact_person" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" Width="180px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="customer_balance" HeaderText="Initial Balance" SortExpression="customer_balance" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="area_name" HeaderText="Area name" SortExpression="area_name" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" Width="80px" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" DeleteCommand="DELETE FROM [customer] WHERE [id] = @id" InsertCommand="INSERT INTO [customer] ([customer_name], [customer_address], [customer_phone], [customer_contact_person], [customer_balance], [area_name]) VALUES (@customer_name, @customer_address, @customer_phone, @customer_contact_person, @customer_balance, @area_name)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [customer_name] = @customer_name, [customer_address] = @customer_address, [customer_phone] = @customer_phone, [customer_contact_person] = @customer_contact_person, [customer_balance] = @customer_balance, [area_name] = @area_name WHERE [id] = @id">
                     <DeleteParameters>
                         <asp:Parameter Name="id" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="customer_name" Type="String" />
                         <asp:Parameter Name="customer_address" Type="String" />
                         <asp:Parameter Name="customer_phone" Type="String" />
                         <asp:Parameter Name="customer_contact_person" Type="String" />
                         <asp:Parameter Name="customer_balance" Type="Decimal" />
                         <asp:Parameter Name="area_name" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="customer_name" Type="String" />
                         <asp:Parameter Name="customer_address" Type="String" />
                         <asp:Parameter Name="customer_phone" Type="String" />
                         <asp:Parameter Name="customer_contact_person" Type="String" />
                         <asp:Parameter Name="customer_balance" Type="Decimal" />
                         <asp:Parameter Name="area_name" Type="String" />
                         <asp:Parameter Name="id" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
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
    </form>
       
</body>
</html>
