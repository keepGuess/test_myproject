<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Registration.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
            <tr>
                <td>
                    <b>User Registration</b>
                </td>
            </tr>
            <tr> 
                <td>
                    <b>User Name</b>
                </td>
                <td>
                    :<asp:TextBox ID="txtUserName" runat="server"> </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorusername" runat="server" ErrorMessage="Name is required"
                    Text="*" ControlToValidate="txtUserName" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr> 
                <td>
                    <b>Password</b>
                </td>
                <td>
                    :<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password is required"
                    Text="*" ControlToValidate="txtPassword" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr> 
                <td>
                    <b>Confirm Password</b>
                </td>
                <td>
                    :<asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ErrorMessage="Confirm Password required"
                    Text="*" ControlToValidate="txtConfirmPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Password and ComparePassword" 
                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                    Display="Dynamic" ForeColor="Red" Text="*">
                    </asp:CompareValidator>
                </td>
           </tr>
           <tr> 
                <td >
                    <b>Email</b>
                </td>
                <td>
                    :<asp:TextBox ID="txtEmail" runat="server"> </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email is required"
                    Text="*" ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" Display="Dynamic"
                     ForeColor="Red" Text="*" ErrorMessage="Invalid Email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                     ></asp:RegularExpressionValidator>
                </td>
           </tr>
           <tr>
               <td>
               </td>
                <td>
                    <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" />
               </td>
          </tr>
          <tr>
               <td colspan="2">
                   <asp:Label ID="lblMessage" runat="server" ForeColor="Red">
                   </asp:Label>
               </td>
          </tr>
          <tr>
               <td colspan="2">
                   <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
               </td>
           </tr>
        </table>

        </div>
    </form>
</body>
</html>
