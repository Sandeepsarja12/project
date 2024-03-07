<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_my_details.aspx.cs" Inherits="view_my_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="images/11.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table style="width:42%;" align="center">
        <tr>
            <td bgcolor="#FFFF99">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFFF99">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFFF99">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
