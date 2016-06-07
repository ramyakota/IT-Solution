<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="MyNewProject.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 230px;
        }
        .auto-style3 {
            width: 413px;
        }
        .auto-style4 {
            width: 544px;
        }
        .auto-style5 {
            width: 230px;
            height: 30px;
        }
        .auto-style6 {
            width: 544px;
            height: 30px;
        }
        .auto-style7 {
            width: 413px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
               
                <td class="auto-style8"></td>
               
            </tr>
            <tr>
                <td class="auto-style2">
                    <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Explore</h5>
                    <asp:TreeView ID="TreeView1" runat="server">
                        <Nodes>
                            <asp:TreeNode NavigateUrl="MainPage.aspx" Text="Home" Value="Home"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="CustRegistration.aspx" Text="Registration" Value="Registration"></asp:TreeNode>
                            <asp:TreeNode Text="AbouUS" Value="AbouUS"></asp:TreeNode>
                            <asp:TreeNode Text="ContactUs" Value="ContactUs"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
                <td class="auto-style4"><h5>&nbsp;</h5>
                    <h5>SignIn here now</h5>
                 UserName&nbsp;<asp:TextBox ID="txtUn" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName" ForeColor="Red" ControlToValidate="txtUn" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                    <br/>
                    <br/>
                 Password&nbsp;&nbsp; <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" ForeColor="Red" ControlToValidate="txtPwd" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                    <br/>
                    <br/>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnSignIn" runat="server" Text="SignIn" OnClick="btnSignIn_Click" Width="173px" BackColor="Aqua" ValidationGroup="SignIn"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
                </td>
                <td class="auto-style3"><h5>New Customer/Signup here now</h5>
                 First Name&nbsp; <asp:TextBox ID="txtFName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ErrorMessage="Enter FirstName" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtFName" runat="server" ValidationGroup="SignUp" /><br/><br/>
                 Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." ValidationGroup="SignUp" /><asp:RequiredFieldValidator ErrorMessage="Enter Email address" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" ValidationGroup="SignUp" /><br/><br/>
                                    <asp:Button ID="btnSignUp" runat="server" Text="SignUp" OnClick="btnSignUp_Click" ValidationGroup="SignUp" /></td>
               
                <td>&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                
                <td>&nbsp;</td>
                
            </tr>
          
        </table>

    </div>
         </form>
    </body>
</html>
