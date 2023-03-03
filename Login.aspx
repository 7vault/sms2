<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="sms2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Stylecss.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    </head>
<body>
    <div style="margin-left: 550px ;margin-top: 10px">
    <img src="images/student.png" alt="Alternate Text" class="user" />
    </div>

    <div style="text-align:center ; margin-top:150px">
        <h2>Log In Here</h2>
    </div>
   <div class="container"  style="border:3px solid blue;height:500px; margin:150px ">

       
       
       <form runat="server">

           <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"/>
        </div>

<%--           <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email" Width="900px" Height="50px"></asp:TextBox>--%>

         <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1"/>
        </div>
<%--           <asp:TextBox ID="txtpassword" runat="server" placeholder="********" Width="900px" Height="50px"></asp:TextBox>--%>

               <br />
           <br />
           <br />

           <div style="align-content:center">
               <asp:Button ID="btnSignUp"  class="btn btn-primary" runat="server" Text="Sign In" Height="37px" Width="218px" />
               <br />
           <br />
               <asp:Button ID="btnpassword"  class="btn btn-secondary" runat="server" Text="Forgot Password" Height="37px" Width="218px" S />

            &nbsp;&nbsp;&nbsp;
           </div>
               

            </form>

   </div>
</body>
</html>

