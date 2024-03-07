<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <br />
    <br />
    <table align="center" style="width: 61%;">
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="Yellow">
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton1_Click">Post Village for Adoption</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="Yellow">
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton2_Click">View all Villages</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="Yellow">
    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton3_Click">Remove a Village from Adoption</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="Yellow">
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton5_Click">View all Registered Sponsers</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                    onclick="LinkButton4_Click">Logout</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
