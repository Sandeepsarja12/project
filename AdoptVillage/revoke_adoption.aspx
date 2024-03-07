<%@ Page Language="C#" AutoEventWireup="true" CodeFile="revoke_adoption.aspx.cs" Inherits="revoke_adoption" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 782px;
        }
    </style>
</head>
<body background="images/7.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <br />
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#CCFF66" class="style1">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#CCFF66" class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" class="style1">
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" class="style1">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Revoke Adoption" style="font-weight: 700" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" class="style1">
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
