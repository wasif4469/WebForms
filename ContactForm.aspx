<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.aspx.cs" Inherits="WebForms.ContactForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h1 {
            text-shadow: 2px 2px 5px Red;
        }

        #Button1 {
            color: white;
            background-color: darkred;
            border-radius: 10px;
            border: black solid;
            height: 40px;
            width: 80px;
        }

        #text-A {
            resize: both;
        }

        .auto-style7 {
            width: 83%;
            height: 227px;
        }

        .auto-style9 {
            width: 118px;
            text-align: justify;
        }

        .auto-style10 {
            width: 118px;
            height: 44px;
            text-align: justify;
        }

        .auto-style11 {
            height: 44px;
        }

        .auto-style12 {
            text-align: center;
        }

        .auto-style13 {
            height: 44px;
            text-align: justify;
        }

        .auto-style14 {
            text-align: justify;
        }
        .auto-style15 {
            width: 118px;
            text-align: justify;
            height: 49px;
        }
        .auto-style16 {
            text-align: justify;
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style14">COTACT DETAIL FORM</h1>
        </div>
        <p id="txtgender" class="auto-style12">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style9">First Name</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="243px" ValidationGroup="AllValidationGroup"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Name Required" ForeColor="Red" Display="Dynamic" ValidationGroup="AllValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">Last Name</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="243px" ValidationGroup="AllValidationGroup"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Name Required" ForeColor="Red" Display="Dynamic" ValidationGroup="AllValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style15">Contact</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="243px" ValidationGroup="AllValidationGroup" MaxLength="11" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Phone Number Required" ForeColor="Red" Display="Dynamic" ValidationGroup="AllValidationGroup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*Invalid Phone Number" ForeColor="Red" ValidationExpression="\d{11}" ValidationGroup="AllValidationGroup"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style9">Email Address</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox4" runat="server" Height="34px" Width="243px" ValidationGroup="AllValidationGroup"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Email Required" ForeColor="Red" Display="Dynamic" ValidationGroup="AllValidationGroup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*Email must be in correct format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="AllValidationGroup"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">Address</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="243px" ValidationGroup="AllValidationGroup"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Please Give your Address" ForeColor="Red" Display="Dynamic" ValidationGroup="AllValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
            </table>
          
            <div style="padding-top:20px;">
                <asp:RadioButton ID="RadioMale" Text="Male" runat="server" GroupName="gender" ValidationGroup="AllValidationGroup" />
                <asp:RadioButton ID="RadioFemale" Text="Female" runat="server" GroupName="gender"  ValidationGroup="AllValidationGroup" />
                &nbsp;&nbsp;
                </div>
            <p style="margin-top: 20px;">
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click1" ValidationGroup="AllValidationGroup" />
                &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#00FF99" AssociatedControlID="Button1"></asp:Label>
            </p>
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="791px" AllowSorting="True" CellSpacing="1" GridLines="None">
            <Columns>
               
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:CommandField HeaderText="Operation" SortExpression="Operation" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle ForeColor="Black" BackColor="#DEDFDE" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Delete All" OnClick="Button2_Click" />
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Details] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Details] ([FirstName], [LastName], [contact], [EmailAddress], [Address], [Gender]) VALUES (@FirstName, @LastName, @contact, @EmailAddress, @Address, @Gender)" SelectCommand="SELECT * FROM [Details]" UpdateCommand="UPDATE [Details] SET [FirstName] = @FirstName, [LastName] = @LastName, [contact] = @contact, [EmailAddress] = @EmailAddress, [Address] = @Address, [Gender] = @Gender WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </center>
    </form>
    </body>
</html>
