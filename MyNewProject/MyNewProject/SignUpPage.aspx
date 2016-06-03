<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="MyNewProject.SignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
    </style>
    <script type="text/javascript">
  function validateLength(oSrc, args){
   args.IsValid = (args.Value.length >= 8);
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><h4>Sign Up</h4></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                   First Name <asp:TextBox ID="txtfirstname" runat="server" ToolTip="Enter your First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" ErrorMessage="Enter firstname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </br>
                   Last Name <asp:TextBox ID="txtlastname" runat="server" ToolTip="Enter your First Name"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="txtlastname" ErrorMessage="Enter lastname"></asp:RequiredFieldValidator>
                    <br />
                    Userid<asp:TextBox ID="txtuserid" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuserid" ForeColor="Red" ErrorMessage="Enter user id"></asp:RequiredFieldValidator>
                         <%-- <asp:RegularExpressionValidator runat=server display=dynamic
            controltovalidate="txtuserid" 
            errormessage="ID must be 6-10 letters." 
            validationexpression="[a-zA-Z]{6,10}" />
--%>
                    <%-- <asp:CustomValidator runat=server
            controltovalidate="txtuserid" 
            errormessage="ID is already in use." 
            OnServerValidate="CheckID" />--%>
                    <br />
                    Password<asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ForeColor="Red" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator runat=server display=dynamic
            controltovalidate="txtpassword" 
            errormessage="Password must contain one of @#$%^&*/."
            validationexpression=".*[@#$%^&*/].*" />
      <asp:RegularExpressionValidator runat=server display=dynamic
            controltovalidate="txtpassword" 
            errormessage="Password must be 8-12 nonblank characters." 
            validationexpression="[^\s]{8,12}"/>
                    <br />
                    Re-Enter Password<asp:TextBox ID="txtrepassword" runat="server" TextMode="Password"></asp:TextBox><asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Re-Enter correct password" ForeColor="Red" ControlToValidate="txtrepassword" ControlToCompare="txtpassword"></asp:CompareValidator>
                    </br>
                   Email <asp:TextBox ID="txtemail" runat="server" ToolTip="Enter your First Name"></asp:TextBox></br><asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtemail" ForeColor="Red" ErrorMessage="Invalid email address." /></br>
                    Re-Enter Email <asp:TextBox ID="txtreemail" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ErrorMessage="Re-Enter correct email" ControlToValidate="txtreemail" ControlToCompare="txtemail"></asp:CompareValidator>
                    <br />
                    Birthday

                    <br />
                    Month<asp:DropDownList ID="dropdownmonth" runat="server">
                        <asp:ListItem>--Select Month--</asp:ListItem>
                        <asp:ListItem Value="01">Jan</asp:ListItem>
                        <asp:ListItem Value="02">Feb</asp:ListItem>
                        <asp:ListItem Value="03">Mar</asp:ListItem>
                        <asp:ListItem Value="04">Apr</asp:ListItem>
                        <asp:ListItem Value="05">May</asp:ListItem>
                        <asp:ListItem Value="06">Jun</asp:ListItem>
                        <asp:ListItem Value="07">Jul</asp:ListItem>
                        <asp:ListItem Value="08">Aug</asp:ListItem>
                        <asp:ListItem Value="09">Sep</asp:ListItem>
                        <asp:ListItem Value="10">Oct</asp:ListItem>
                        <asp:ListItem Value="11">Nov</asp:ListItem>
                        <asp:ListItem Value="12">Dec</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    Day<asp:DropDownList ID="dropdownday" runat="server">
                        <asp:ListItem>--Select Day--</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    Year<asp:DropDownList ID="dropdownyear" runat="server">
                        <asp:ListItem>--Select Year--</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                    </asp:DropDownList>

                    

                    <br />
                   <!-- Gender<br />
                    Male<asp:RadioButton ID="radiomale" runat="server" />
&nbsp;&nbsp;&nbsp;
                    Female<asp:RadioButton ID="radiofemale" runat="server" />-->

                   Gender: <asp:RadioButtonList ID="txtgender" runat="server" ItemType="">
                       <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>

                    <br />
                    Address:<br />
                    Addr1<asp:TextBox ID="txtaddr1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddr1" ErrorMessage="Enter address line1" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    Addr2<asp:TextBox ID="txtaddr2" runat="server"></asp:TextBox>
                    <br />
                    Street<asp:TextBox ID="txtstreet" runat="server"></asp:TextBox>
                    <br />
                    City<asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter City" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    State<asp:TextBox ID="txtstate" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtstate" ErrorMessage="Enter State" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    Zipcode<asp:TextBox ID="txtzip" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtzip" ErrorMessage="Enter Zipcode" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    Mobile Number<asp:TextBox ID="txtmobile" runat="server" TextMode="Phone"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter mobile number" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
