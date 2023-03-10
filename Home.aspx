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
            &nbsp;<br class="auto-style3" />
            <asp:Label ID="lblNom" runat="server" Text="Nom"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNom" runat="server" ></asp:TextBox>


            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;


            <asp:Label ID="lblPrenom" runat="server" Text="Prenom"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPrenom" runat="server" ></asp:TextBox>

            
            <br />
            <br />
            <br />

             <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox  ID="txtEmail" runat="server" ></asp:TextBox>


            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="lblDate" runat="server" Text="DDN"></asp:Label>
                &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDdn" runat="server" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            
            <asp:Label ID="lblDiscipline" runat="server" Text="Discipline"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtDiscipline" runat="server" ></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="lblAdress" runat="server" Text="Adress"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAdress" runat="server" ></asp:TextBox>

             <br />
            <br />
            <br />

             <asp:Label ID="nationalite" runat="server" Text="Nationalite"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNationalite" runat="server" ></asp:TextBox>

            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


            <asp:Label ID="LabelSexe" runat="server" Text="Sexe"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtSexe" runat="server" ></asp:TextBox>

                &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <br />
            <br />
            <br />

            
            <asp:Label ID="EtudiantID" runat="server" Text="EtudiantID"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtID" runat="server" ></asp:TextBox>


            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


            <asp:Label ID="Labeldate" runat="server" Text="Date"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDateCree" runat="server" ></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <br />
            <br />

            <asp:Label ID="Telephone" runat="server" Text="Telephone"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTelephone" runat="server" ></asp:TextBox>

            <br />
            <br />
            <asp:Button type="button" class="btn btn-outline-success" style="margin-left:50px" id="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" ></asp:Button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button type="button" class="btn btn-outline-success" id="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"  ></asp:Button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button type="button" class="btn btn-outline-danger" id="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" ></asp:Button>

           <br />
           <br />
                <asp:GridView ID="GridView1" runat="server" Width="743px"></asp:GridView>

            </p>

           

        </div>

    <form id="form2" runat="server">
         
 
         <table style="width:100%;">
             <tr>
                 <td class="auto-style7">
                     <asp:Button ID="btnAdd" runat="server" Text="Add" Font-Bold="True" Font-Size="Medium" ForeColor="White" BorderStyle="None"/>
                        <asp:Panel ID="ModalPanel" runat="server" Width="500px">
                        <input id="txtNom" type="text" class="form-control" placeholder="First name">
                        <input id="txtPrenom" type="text" class="form-control" placeholder="Last name">
                        <input id="txtDDN" type="text" class="form-control" placeholder="Brithday">
                        <input id="txtDisc" type="text" class="form-control" placeholder=" Discipline">
                        <input id="txtAdress" type="text" class="form-control" placeholder="Adress">
                        <input id="txtPays" type="text" class="form-control" placeholder=" Country">
                        <input id="txtDate" type="text" class="form-control" placeholder="Date">
                        <input id="txtEmail" type="text" class="form-control" placeholder=" Email">
                         <select id="inputState" class="form-select">
                              <option selected>Sex...</option>
                              <option>Male</option>
                              <option>Female</option>
                              <option>None</option>
                         </select>
                         <asp:Button ID="btnSave" runat="server" Text="Save"  BackColor="#034C8C" Font-Bold="True" Font-Size="Medium" ForeColor="White" BorderStyle="None"/>
                         <asp:Button ID="btnCancel" runat="server" Text="Cancel"  BackColor="#034C8C" Font-Bold="True" Font-Size="Medium" ForeColor="White" BorderStyle="None" />

                        </asp:Panel>
                     <ajaxToolkit:ModalPopupExtender ID="mpe" runat="server" TargetControlId="btnAdd" 
                            PopupControlID="ModalPanel" OkControlID="btnCancel" />
                     <asp:ScriptManager ID="asm" runat="server" />
                 </td>
                 <td class="auto-style9">
                     <asp:Label ID="lbstudent" runat="server" Text="Student List" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                 </td>
                 <td class="auto-style11" rowspan="3">
                        <form>
                          <asp:TextBox ID="search" runat="server" type="search" placeholder="   Search..."></asp:TextBox>
                          <button type="submit">Search</button>
                        </form>
                  </td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <asp:Button ID="btnDelete" runat="server" Text="Delete" BackColor="#034C8C" Font-Bold="True" Font-Size="Medium" ForeColor="White" BorderStyle="None" CssClass="auto-style12"/>
                 </td>
                 <td class="auto-style11" rowspan="2">
                      <asp:GridView ID="gvStudent" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="891px" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                              <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                              <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                              <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                              <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                              <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                              <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" /> 
                          </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#166393" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#03588C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>

                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <asp:Button ID="btnModify" runat="server" Text="Modify" BackColor="#034C8C" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="44px" BorderStyle="None"/>
                 </td>
             </tr>
         </table>

    </form>
    </body>
</html>
