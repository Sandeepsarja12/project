<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sponser_home.aspx.cs" Inherits="sponser_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 46px;
        }
    </style>
</head>
<body background="images/10.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <br />
    <table align="center" style="width: 46%;">
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="Yellow">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#003300" Text="Welcome Sponser"></asp:Label>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#FF6666">
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton1_Click">View all Villages for Adoption</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#FF6666">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#FF6666">
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton2_Click">Revoke my Adoption</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#FF6666">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#FF6666">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton3_Click">View my Village Adoption</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#FF6666">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#FF6666">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton4_Click">View My Details</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
