<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="sms2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Stylecss.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    </head>
<body>
    
   <div class="container" style="border:2px solid silver;height:500px; margin:150px">
    <img src="images/student.png" alt="Alternate Text" class="user" />
       <h2>&nbsp;</h2>
       <h2>&nbsp;</h2>
       <h2>Log In Here</h2>
       <form runat="server">

           <br />
           <br />

           <asp:TextBox ID="txtUserName" runat="server" placeholder="Enter Email" Width="900px" Height="50px" Wrap="False"></asp:TextBox>

           <br />
           <br />
           <asp:TextBox ID="txtPassword" runat="server" placeholder="********" Width="900px" Height="50px"></asp:TextBox>

               <br />
           <br />
           <br />

               <asp:Button ID="btnSignIn" OnClick="btnSignIn_Click"  class="btn btn-success" runat="server" Text="Sign In" Height="37px" Width="218px" />
               <br />
           <br />
               <asp:Button ID="btnForgetPassword" OnClick="btnForgetPassword_Click" class="btn btn-dark" runat="server" Text="Forgot Password" />
                <p><asp:Label ID="lblMessage" runat="server"></asp:Label></p>

            &nbsp;&nbsp;&nbsp;

            </form>

   </div>
</body>
</html>

