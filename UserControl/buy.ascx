<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="buy.ascx.cs" Inherits="InventoryM.User_Control.buy" %>
<style type="text/css">
    .auto-style1 {
        width: 115%;
        height: 178px;
    }
    .auto-style4 {
        height: 23px;
        width: 990px;
    }
    .auto-style5 {
        width: 400px;
        height: 277px;
    }
    .auto-style7 {
        height: 23px;
        width: 723px;
    }
    .auto-style8 {
        width: 723px;
        height: 30px;
    }
    .auto-style9 {
        width: 990px;
        height: 30px;
    }
    .auto-style10 {
        width: 723px;
        height: 27px;
    }
    .auto-style11 {
        width: 990px;
        height: 27px;
    }
    .auto-style12 {
        width: 723px;
        height: 29px;
    }
    .auto-style13 {
        width: 990px;
        height: 29px;
    }
    .auto-style14 {
        margin-bottom: 0px;
    }
</style>
<fieldset class="auto-style5" style="padding-left:50px" id="UCbuy" aria-atomic="False" aria-hidden="False">
    <legend>Add Products</legend>
    <table class="auto-style1">
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox1" runat="server" Width="246px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" Width="245px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label3" runat="server" Text="Marchent Name"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox3" runat="server" Width="246px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox4" runat="server" Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox5" runat="server" Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server" Text="Detail"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox6" runat="server" Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label7" runat="server" Text="Created At"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox7" runat="server" Width="247px" Height="17px"></asp:TextBox>
            </td>
        </tr>
    </table>

    <asp:Button ID="Button1" runat="server" Height="26px" Text="Add" Width="78px" CssClass="auto-style14" Font-Bold="True" />

</fieldset>

    <p>

        &nbsp;</p>


