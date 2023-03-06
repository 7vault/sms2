<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="sms2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link href="Style2.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>

    <style type="text/css">
        .auto-style1 {
            margin-left: 80px;
            margin-right: 100px;
        }
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            margin-left: 120px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

         

        <div class="auto-style1">
            <p class="auto-style2">
            <br class="auto-style3" />
                     <form>
  <div class="row" style="height:30px; width: 700px">
    <div class="col">
      <input id="txtNom" type="text" class="form-control" placeholder="First name">
    </div>
    <div class="col">
      <input id="txtPrenom" type="text" class="form-control" placeholder="Last name">
    </div>
  </div>
</form>
                <br />
                <br />
           

                     <form>
  <div class="row" style="height:30px; width: 700px">
    <div class="col">
      <input id="txtID" type="text" class="form-control" placeholder=" ID">
    </div>
    <div class="col">
      <input id="txtDDN" type="text" class="form-control" placeholder="Brithday">
    </div>
  </div>
</form>
                
            <br />
            <br />
            <br />

              <form>
  <div class="row" style="height:30px; width: 700px">
    <div class="col">
      <input id="txtDisc" type="text" class="form-control" placeholder=" Discipline">
    </div>
    <div class="col">
      <input id="txtAdress" type="text" class="form-control" placeholder="Adress">
    </div>
  </div>
</form>
                
            <br />
            <br />
            <br />

                    <form>
  <div class="row" style="height:30px; width: 700px">
    <div class="col">
      <input id="txtPays" type="text" class="form-control" placeholder=" Country">
    </div>
    <div class="col">
      <input id="txtDate" type="text" class="form-control" placeholder="Date">
    </div>
  </div>
</form>
             <br />
            <br />
            <br />
        <form>
  <div class="row" style="height:30px; width: 700px">
    <div class="col">
        <input id="txtEmail" type="text" class="form-control" placeholder=" Email">
    </div>
    <div class="col-md-6">
    <select id="inputState" class="form-select">
      <option selected>Sex...</option>
      <option>Male</option>
      <option>Female</option>
      <option>None</option>
    </select>
  </div>
  </div>
</form>
            <br />
            <br />
            <br />

            <button type="button" class="btn btn-outline-success" style="margin-left:50px">Save </button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <button type="button" class="btn btn-outline-success">Update</button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-outline-danger">Delete</button>

           <br />
           <br />
                <asp:GridView ID="GridView1" runat="server" Width="743px"></asp:GridView>

            </p>

           

        </div>
    </form>
    </body>
</html>
