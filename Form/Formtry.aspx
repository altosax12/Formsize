<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formtry.aspx.cs" Inherits="Formtry.Formtry"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style7 {
            text-align: center;
        }
        .auto-style9 {
            margin-left: 521px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style12 {
            text-align: right;
            width: 424px;
        }
        .auto-style13 {
            height: 26px;
            text-align: right;
            width: 424px;
        }
        .auto-style14 {
            text-align: left;
            width: 452px;
        }
        .auto-style15 {
            height: 26px;
            text-align: left;
            width: 452px;
        }
        .auto-style16 {
            height: 26px;
            text-align: left;
        }
        .auto-style17 {
            text-align: left;
            height: 29px;
        }
        .auto-style18 {
            text-align: right;
            width: 424px;
            height: 29px;
        }
        .auto-style19 {
            text-align: left;
            width: 452px;
            height: 29px;
        }
        .auto-style20 {
            text-align: left;
        }
    </style>
</head>
<body style="height: 1222px">
    <form id="form1" runat="server">
        <div class="auto-style7">
            Form</div>
        <div class="auto-style7">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style13">First Name</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="FirstName" runat="server" ValidationGroup="vg" Width="445px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" Display="Dynamic" ErrorMessage="Enter first name" ForeColor="Red" ValidationGroup="vg"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="Enter first name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="vg"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">Last Name</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="Lastname" runat="server" Width="445px" ValidationGroup="vg"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Lastname" ErrorMessage="Enter last name" ForeColor="Red" ValidationGroup="vg"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Lastname" ErrorMessage="Enter last Name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="vg"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Email Address</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="Email" runat="server" Width="445px" ValidationGroup="vg"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Enter email" ForeColor="Red" ValidationGroup="vg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">Date of Birth</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="DoB" runat="server" Width="445px" ValidationGroup="vg"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DoB" ErrorMessage="Please enter date of birth" ForeColor="Red" ValidationGroup="vg"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DoB" ErrorMessage="CustomValidator" ValidationGroup="vg"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Phone Number</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="Phone" runat="server" Width="445px" ValidationGroup="vg"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Phone" ErrorMessage="invalid phone number" ForeColor="Red" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$" ValidationGroup="vg"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Password </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="PAss" runat="server" Width="445px" ValidationGroup="vg"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PAss" ErrorMessage="Enter password please" ForeColor="Red" ValidationGroup="vg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Confirm Password </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="Passc" runat="server" Width="445px" ValidationGroup="vg"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PAss" ControlToValidate="Passc" ErrorMessage="passwords don't match" ForeColor="Red" ValidationGroup="vg"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
        </div>

        <p id="registerb" class="auto-style7">
            <asp:Button ID="Button1" runat="server" Text="Register" ValidationGroup="vg" OnClick="Button1_Click" />
            <asp:Label ID="Registeredr" runat="server" Text="Registered User: "></asp:Label>
        </p>
        <div class="auto-style7">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style9" ValidationGroup="vg" Width="201px" />
        </div>
            
    </form>
</body>
</html>
