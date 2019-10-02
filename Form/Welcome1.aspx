<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome1.aspx.cs" Inherits="Form.Welcome1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
            <br />
            <br />
        </div>
        <p>
            <asp:Button ID="registerb" runat="server" Text="Register" />
        </p>
    </form>
</body>
</html>
