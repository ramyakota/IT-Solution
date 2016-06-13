<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfoPage.aspx.cs" Inherits="MyNewProject.UserInfoPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    Userid<asp:TextBox ID="txtuserid" runat="server"></asp:TextBox>                         <%-- <asp:RegularExpressionValidator runat=server display=dynamic
            controltovalidate="txtuserid" 
            errormessage="ID must be 6-10 letters." 
            validationexpression="[a-zA-Z]{6,10}" />
--%>                    <%-- <asp:CustomValidator runat=server
            controltovalidate="txtuserid" 
            errormessage="ID is already in use." 
            OnServerValidate="CheckID" />--%>
                    <br />
                   First Name <asp:TextBox ID="txtfirstname" runat="server" ToolTip="Enter your First Name"></asp:TextBox>
                    </br>
                   Last Name <asp:TextBox ID="txtlastname" runat="server" ToolTip="Enter your Last Name"></asp:TextBox>
                    <br />
                   Email <asp:TextBox ID="txtemail" runat="server" ToolTip="Enter your Valid Email Address"></asp:TextBox>

                    <br />
                    Address:<br />
                    Addr1<asp:TextBox ID="txtaddr1" runat="server"></asp:TextBox>
                    <br />
                    Addr2<asp:TextBox ID="txtaddr2" runat="server"></asp:TextBox>
                    <br />
                    Street<asp:TextBox ID="txtstreet" runat="server"></asp:TextBox>
                    <br />
                    City<asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                    <br />
                    State<asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                    <br />
                    Zipcode<asp:TextBox ID="txtzip" runat="server"></asp:TextBox>
                    <br />
                    Mobile Number<asp:TextBox ID="txtmobile" runat="server" TextMode="Phone"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnedit" runat="server" Text="Edit" OnClick="btnedit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="btnsave" runat="server" Text="Save" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
