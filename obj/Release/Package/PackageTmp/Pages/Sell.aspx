<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="InventoryM.Pages.Sell" %>

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

    .auto-style9 {
        width: 336px;
        height: 45px;
    }
    .auto-style10 {
        height: 45px;
    }

    .auto-style11 {
        height: 63px;
        width: 336px;
    }
    .auto-style12 {
        height: 20px;
        width: 336px;
    }
    .auto-style13 {
        width: 336px;
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
      <span style="font-size:50px;cursor:pointer" onclick="openNav()">&#9776; Sell</span>
      

    <div style="display:flex">
        <div>
        <table class="auto-style3 p-5">
            <tr>
                <td class="auto-style6" style="text-align:center">
                    <asp:Label ID="Label13" runat="server" Text="New INVOICE" Font-Bold="True" Font-Size="Larger"></asp:Label>
                </td>      
            </tr>
            <tr>
                 <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Customer ID"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource7" DataTextField="id" DataValueField="id" Width="300px" AutoPostBack="True" ReadOnly="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" SelectCommand="SELECT [id] FROM [customer] WHERE ([customer_name] = @customer_name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="customer_name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Text="Customer Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="customer_name" DataValueField="customer_name" Width="300px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" SelectCommand="SELECT [customer_name] FROM [customer]"></asp:SqlDataSource>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Total Ammount"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="300px" TextMode="Number">0</asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Recieve Ammount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="300px" TextMode="Number">0</asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Created By"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="300px" ReadOnly="True"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Delivery Man Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="dv_name" DataValueField="dv_name" Width="300px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" SelectCommand="SELECT [dv_name] FROM [dv]"></asp:SqlDataSource>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD  Invoice" Width="300px" />
                 </td>
                
            </tr>
     </table>
    
     <div>
     <table class="auto-style3 p-5">
            <tr>
                <td class="auto-style11" style="text-align:center">
                    <asp:Label ID="Label8" runat="server" Text="Add Items" Font-Bold="True" Font-Size="Larger"></asp:Label>
                </td>      
            </tr>
            <tr>
                 <td class="auto-style12">
                    <asp:Label ID="Label10" runat="server" Text="Product ID"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource8" DataTextField="id" DataValueField="id" Width="300px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" SelectCommand="SELECT [id] FROM [products] WHERE ([name] = @name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList3" Name="name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label19" runat="server" Text="Company Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="companyName" DataValueField="companyName" Width="300px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" SelectCommand="SELECT [companyName] FROM [companys]"></asp:SqlDataSource>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label14" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" Width="300px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                   
           
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" SelectCommand="SELECT [name] FROM [products] WHERE ([company] = @company)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList5" DefaultValue="RFL" Name="company" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                   
           
                </td>
                
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label15" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px" TextMode="Number"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label16" runat="server" Text="Sell Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="300px" TextMode="Number"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label21" runat="server" Text="Profit"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="300px" TextMode="Number"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label23" runat="server" Text="Ledger Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Width="300px" TextMode="Date"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label17" runat="server" Text="Ledger Details"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="300px" ></asp:TextBox>
                </td>
                
            </tr>
             <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label22" runat="server" Text="Inv Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="300px" TextMode="Number"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label18" runat="server" Text="Delivery Man Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="dv_name" DataValueField="dv_name" Width="300px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" SelectCommand="SELECT [dv_name] FROM [dv]"></asp:SqlDataSource>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ADD Products to cart" Width="300px" />
                 </td>
                
            </tr>
        
     </table>
        </div>
     <div class="pt-3">
              <td class="auto-style13 ">
              <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Create in Invoice" Width="437px" Height="30px" />
              </td>
     </div>
    </div>

    <div class="auto-style3 p-5">
        <div>
                    <div style="text-align:center" class="pb-3">
                        <td class="auto-style3" >
                                    <asp:Label ID="Label5" runat="server" Text="Invoice" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        </td>
                    </div>
                      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" Height="146px" Width="817px">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                              <ItemStyle HorizontalAlign="Left" Width="10px" Wrap="True" />
                              </asp:CommandField>
                              <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id">
                              <HeaderStyle Width="40px" HorizontalAlign="Center" />
                              <ItemStyle Width="30px" HorizontalAlign="Center" />
                              </asp:BoundField>
                              <asp:BoundField DataField="customer_id" HeaderText="Cust ID" SortExpression="customer_id" >
                              <ItemStyle HorizontalAlign="Center" />
                              </asp:BoundField>
                              <asp:BoundField DataField="customer_name" HeaderText="Cust Name" SortExpression="customer_name" />
                              <asp:BoundField DataField="total_ammount" HeaderText="Total" SortExpression="total_ammount" />
                              <asp:BoundField DataField="recieve_ammount" HeaderText="Recieved" SortExpression="recieve_ammount" />
                              <asp:BoundField DataField="due" HeaderText="Due" SortExpression="due" />
                              <asp:BoundField DataField="created_date" HeaderText="Created D" SortExpression="created_date" />
                              <asp:BoundField DataField="created_by" HeaderText="Created by" SortExpression="created_by" />
                              <asp:BoundField DataField="dv_name" HeaderText="DV name" SortExpression="dv_name" />
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
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryWebDatabse %>" DeleteCommand="DELETE FROM [cust_inv] WHERE [id] = @id" InsertCommand="INSERT INTO [cust_inv] ([customer_id], [customer_name], [total_ammount], [recieve_ammount], [due], [created_date], [created_by], [dv_name]) VALUES (@customer_id, @customer_name, @total_ammount, @recieve_ammount, @due, @created_date, @created_by, @dv_name)" SelectCommand="SELECT * FROM [cust_inv]" UpdateCommand="UPDATE [cust_inv] SET [customer_id] = @customer_id, [customer_name] = @customer_name, [total_ammount] = @total_ammount, [recieve_ammount] = @recieve_ammount, [due] = @due, [created_date] = @created_date, [created_by] = @created_by, [dv_name] = @dv_name WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="customer_id" Type="Int32" />
                            <asp:Parameter Name="customer_name" Type="String" />
                            <asp:Parameter Name="total_ammount" Type="Decimal" />
                            <asp:Parameter Name="recieve_ammount" Type="Decimal" />
                            <asp:Parameter Name="due" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="created_date" />
                            <asp:Parameter Name="created_by" Type="String" />
                            <asp:Parameter Name="dv_name" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="customer_id" Type="Int32" />
                            <asp:Parameter Name="customer_name" Type="String" />
                            <asp:Parameter Name="total_ammount" Type="Decimal" />
                            <asp:Parameter Name="recieve_ammount" Type="Decimal" />
                            <asp:Parameter Name="due" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="created_date" />
                            <asp:Parameter Name="created_by" Type="String" />
                            <asp:Parameter Name="dv_name" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
         </div>
        <div class="pt-5">
               <div style="text-align:center" class="pb-3">
                        <td class="auto-style3" >
                                    <asp:Label ID="Label7" runat="server" Text="Cart" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        </td>
              </div>
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="75px" Width="746px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowDataBound="GridView2_RowDataBound">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            <div style="text-align:right" class="p-5">
                <asp:Label ID="lblSum" runat="server" Text="Grand Total:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </div>
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
