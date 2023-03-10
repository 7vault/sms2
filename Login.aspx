<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="sms2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Stylecss.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    </head>
<body>
    <div style="margin-left: 620px ;margin-top:20px">
        
    <img src="images/student.png" alt="Alternate Text" class="user" />
    </div>

    <div style="text-align:center ; margin-top:10px">
        <h2>Log In Here</h2>
    </div>
   <div class="container"  style="border:3px solid blue;height:400px; width:600px; margin-top:40px ">


           <asp:TextBox ID="txtUserName" runat="server" placeholder="Enter Email" Width="900px" Height="50px" Wrap="False"></asp:TextBox>

           <br />
           <br />
           <asp:TextBox ID="txtPassword" runat="server" placeholder="********" Width="900px" Height="50px"></asp:TextBox>

       
       
       <form runat="server">

           <div class="mb-3" style="width: 500px">
                <label for="lblUsername" class="form-label"></label>
                <input type="username" class="form-control" id="Email1" placeholder="UserName" aria-describedby="emailHelp"/>
        </div>

<%--           <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email" Width="900px" Height="50px"></asp:TextBox>--%>


         <div class="mb-3" style="width: 500px">
            <label for="lblPassword" class="form-label"></label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"/>
        </div>
<%--           <asp:TextBox ID="txtpassword" runat="server" placeholder="********" Width="900px" Height="50px"></asp:TextBox>--%>
               
               <br />
           <br />
           <br />


               <asp:Button ID="btnSignIn" OnClick="btnSignIn_Click"  class="btn btn-success" runat="server" Text="Sign In" Height="37px" Width="218px" />
               <br />
           <br />
               <asp:Button ID="btnForgetPassword" OnClick="btnForgetPassword_Click" class="btn btn-dark" runat="server" Text="Forgot Password" />
                <p><asp:Label ID="lblMessage" runat="server"></asp:Label></p>

           <div class="bouton" style="align-content:center">
               <asp:Button ID="btnSignUp"  class="btn btn-primary" runat="server" Text="Sign In" Height="37px" Width="150px" />
               <br />
           <br />
               <asp:Button ID="btnpassword"  class="btn btn-secondary" runat="server" Text="Forgot Password" Height="37px" Width="150px"  />


            &nbsp;&nbsp;&nbsp;
           </div>
               

            </form>

   </div>
</body>
</html>

