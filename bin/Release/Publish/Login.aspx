<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InventoryM.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet"  href="login.css"/>
</head>
<body style="background-image:url('Img/Login background.jpg')">
    <form id="form1" runat="server">
        <br />
        <br />
    <div align="center" class="container jumbotron bg-light boxshadow" style="width:35%">
    <form>
        <div class="card-header-pills bg-dark text-white">
            <h2>Login Page</h2>
        </div>
        <div class="form-group" style=" width:80%">
            <label class="text-dark" for="emailLabel">User Name</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">@</div>
                </div>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="text-dark" for="passLabel">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" Width="80%"></asp:TextBox>
        </div>
        <div class="accordion">
            <asp:LinkButton ID="invalid" runat="server" CssClass="btn btn-link" Visible="False" BorderStyle="Solid" EnableTheming="False" ForeColor="#FF3300">invalid Username or Password</asp:LinkButton>
            </div>
        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit"  CssClass="btn btn-primary" OnClick="ButtonSubmit_Click1"/>
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-link">Forget Password?</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-link">New User!</asp:LinkButton>
            
        </div>
    </form>
    </div>
    </form>
</body>
</html>