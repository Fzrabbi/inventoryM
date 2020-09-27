<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="InventoryM.Dashboard" %>

<%@ Register src="UserControl/buy.ascx" tagname="buy" tagprefix="uc2" %>

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

</style>
</head>
<body style="background-image:url('Img/dashboardbackground.jpg')">
 <form id="form1" runat="server">

<div id="mySidenav" class="sidenav">

    <div style="text-align:center">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Img/user.png" Width="119px" />
        <br />
           <asp:Label ID="Label9" runat="server" Text="User Name" Font-Bold="True" ForeColor="#818181"></asp:Label>
        <br />
           <asp:Button ID="ButtonLogOut" runat="server" CssClass="btn-danger" OnClick="ButtonLogOut_Click1" Text="Log Out" />
        <br/>
    </div>
         &nbsp;<br/>
      <a href="Pages/Stock.aspx">Stock</a>&nbsp;
      <br/>
      <a href="#">Buy</a>
      <br/>
      <a href="Pages/Sell.aspx">Sell</a>
      <br/>
      <a href="Pages/Client.aspx">Clients</a>
      <br/>
      <a href="Pages/Company.aspx">Company</a>
      <br/>
      <a href="Pages/Dvman.aspx">Delevery Man</a>

         <br/>
         <br/>
         <br />
         <br />
     

      <p>
           &nbsp;</p>
</div>
<div id="main">
      <span style="font-size:50px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
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

        
        <br/>
        <br/>
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