<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="Employee_Management_System.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" BackColor="#66FF33" Height="33px" Text="Add Employee" Width="110px" OnClick="Button3_Click" />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="269px" Width="578px" AlternatingRowStyle-HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="PaleGoldenrod" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundField HeaderText="First name" />
                    <asp:BoundField HeaderText="Last name" />
                    <asp:BoundField HeaderText="DOB" />
                    <asp:BoundField HeaderText="Email" />
                    <asp:BoundField HeaderText="Gender" />
                    <asp:BoundField HeaderText="Password" />
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" BackColor="#33CCFF" ForeColor="White" Text="Edit" />
                            <asp:Button ID="Button2" runat="server" BackColor="#FF3300" Text="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Employee Management SystemConnectionString %>" SelectCommand="SELECT [firstname], [lastname], [dob], [gender], [password], [email] FROM [Employee] ORDER BY [firstname] DESC"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
