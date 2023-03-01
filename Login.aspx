<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="sms2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Stylecss.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 50%;
            left: -18%;
            transform: translate(-50%,-50%);
            width: 748px;
            height: 420px;
            padding: 80px 40px;
            box-sizing: border-box;
            margin-left: 604px;
        }
    </style>
</head>
<body>
   <div style="margin:200px">
    <img src="images/autre.jpg" alt="Alternate Text" class="user" style="margin"/>
       <h2>Log In Here</h2>
       <form runat="server">

<%--           <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>--%>
           <div class="form-floating mb-3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com"/>
            <label for="floatingInput">Email address</label>
            </div>

<%--           <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email"></asp:TextBox>--%>

<%--           <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>--%>
           <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password"/>
            <label for="floatingPassword">Password</label>
        </div>
<%--           <asp:TextBox ID="txtpassword" runat="server" placeholder="********"></asp:TextBox>--%>

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

