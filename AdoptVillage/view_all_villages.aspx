<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_all_villages.aspx.cs" Inherits="view_all_villages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="images/white-background-wallpaper-8.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <br />
    <table style="width: 57%;">
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
    <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back</asp:LinkButton>
            </td>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
