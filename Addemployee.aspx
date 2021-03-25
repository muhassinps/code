<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addemployee.aspx.cs" Inherits="Employee_Management_System.Addemployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript" src="js/JScript.js" ></script>
    <style type="text/css">
        .auto-style1 {
            width: 47%;
            height: 535px;
        }
        .auto-style2 {
            width: 413px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" class="auto-style1" style="background-color: #99CCFF">
               
                <tr>
                    <td class="auto-style2">First Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="143px"></asp:TextBox>
&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="You must be enter your first name" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="145px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="You Must be enter your Last name" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">DOB</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="23px" TextMode="Date" Width="146px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="You must be enter your date of birth" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="26px" TextMode="Email" Width="148px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="check your email address" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" Width="206px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage=" Select your gender" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="23px" TextMode="Password" Width="153px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="You must be enter your password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="25px" TextMode="Password" Width="163px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox4" ErrorMessage="Incorrect" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Password" ValueToCompare="Textbox5"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="Yellow" Height="34px" OnClick="Button1_Click" Text="Register" Width="108px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
