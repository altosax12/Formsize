<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Form.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 463px;
            text-align: right;
        }
        .auto-style4 {
            height: 26px;
            width: 463px;
            text-align: right;
        }
        .auto-style5 {
            width: 367px;
        }
        .auto-style6 {
            height: 26px;
            width: 367px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            margin-top: 33px;
        }
        .auto-style9 {
            margin-left: 521px;
        }
        .auto-style10 {
            width: 463px;
            text-align: right;
            height: 25px;
        }
        .auto-style11 {
            width: 367px;
            height: 25px;
        }
        .auto-style12 {
            height: 25px;
        }
        .auto-style13 {
            width: 463px;
            text-align: right;
            height: 29px;
        }
        .auto-style14 {
            width: 367px;
            height: 29px;
        }
        .auto-style15 {
            height: 29px;
        }
    </style>
</head>
<body style="height: 1222px">
    <form id="form1" runat="server">
        <div class="auto-style7">
            Form</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">First Name</td>
                <td class="auto-style11">
                    <asp:TextBox ID="FirstName" runat="server" ForeColor="#CCCCCC" Width="361px">e.g David</asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="FirstName" ErrorMessage="Enter First Name" ForeColor="#CC0000" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ValidationGroup="vg"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="361px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter LAst Name" ForeColor="#CC0000" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ValidationGroup="vg"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email Address</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Email" runat="server" ForeColor="#CCCCCC" Width="361px">e.g example@gmail.com</asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Email addresses you entered is invalid" ForeColor="Red" ValidationExpression=" \b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b" ValidationGroup="vg"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Date of birth</td>
                <td class="auto-style14">
                    <asp:TextBox ID="DateofBirth" runat="server" ForeColor="#CCCCCC" OnTextChanged="DateofBirth_TextChanged" Width="362px">e.1 ###-###-####</asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="DateofBirth" ErrorMessage="Please enter your date of birth" ForeColor="Red" ValidationExpression="^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$" ValidationGroup="vg"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone Number</td>
                <td class="auto-style5">
                    <asp:TextBox ID="PhoneNum" runat="server" ForeColor="#CCCCCC" Width="363px">e.g ###-###-####</asp:TextBox>
                </td>
                <td>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="PhoneNum" ErrorMessage="Please enter Numeber" ForeColor="Red" ValidationExpression="(?:^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$)?" ValidationGroup="vg"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Password" runat="server" Width="361px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" ErrorMessage="please enter password" ForeColor="Red" ValidationGroup="vg"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Confpassword" runat="server" Width="359px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="Confpassword" ErrorMessage="Password does not match." ForeColor="Red" ValidationGroup="vg"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        <div class="auto-style7">
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Text="Register" ValidationGroup="vg" />
        </p>
        <div class="auto-style7">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style9" ValidationGroup="vg" Width="367px" />
        </div>
    </form>
</body>
</html>
