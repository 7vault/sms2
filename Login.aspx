<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="sms2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Stylecss.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    </head>
<body>
   <div style="margin:200px">
    <img src="images/autre.jpg" alt="Alternate Text" class="user" style="margin"/>
       <h2>Log In Here</h2>
       <form runat="server">


           <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email" Width="900px" Height="50px" ></asp:TextBox>

           <br />
           <br />
           <br />
           <asp:TextBox ID="txtpassword" runat="server" placeholder="********" Width="900px" Height="50px"></asp:TextBox>
           <br />
           <br />
           <br />
           <br />

               <asp:Button ID="btnsubmit"  class="btn btn-success" runat="server" Text="Sign In" />
           <br />
           <br />
               <asp:Button ID="btnpassword"  class="btn btn-dark" runat="server" Text="Forgot Password" />

            &nbsp;&nbsp;&nbsp;

            </form>

   </div>
</body>
</html>

