<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="row header">
    <div class="col-sm-3"><a href="home.aspx">Home</a></div>
    <div class="col-sm-3"><a href="browse.aspx">Browse Books</a></div>
    <div class="col-sm-3"><a href="profilePage.aspx">Profile</a></div>
    <div class="col-sm-3 selected"><a href="registration.aspx">Register</a></div>
  </div>
  <div class="row margin-top-25">
    <h5>Register for an account</h5>
  </div>
  <div class="row registrationContainer margin-top-15">
    <div class="col-sm-8">
      <asp:Label ID=UsernameLabel runat="server" Text="Username:"></asp:Label>
      <asp:TextBox ID=registrationUsername runat="server" CssClass="form-control margin-bottom-10"></asp:TextBox>
      <asp:RequiredFieldValidator CssClass=forceDisplay ID=RequiredFieldValidator2 ControlToValidate=registrationUsername runat="server" ForeColor=red ErrorMessage="Username required"></asp:RequiredFieldValidator>
      
      <asp:Label ID=PasswordLabel runat="server" Text="Password:"></asp:Label>
      <asp:TextBox ID=registrationPassword runat="server" CssClass="form-control margin-bottom-10"></asp:TextBox>
      <asp:RequiredFieldValidator CssClass=forceDisplay ID=RequiredFieldValidator3 runat="server" ControlToValidate=registrationPassword ForeColor=red ErrorMessage="Password required"></asp:RequiredFieldValidator>

      <asp:Label ID="FirstNameLabel" runat="server" Text="First Name:"></asp:Label>
      <asp:TextBox ID="registrationFirstName" CssClass="form-control margin-bottom-10" runat="server"></asp:TextBox>

      <asp:Label ID="LastNameLabel" runat="server" Text="Last Name:"></asp:Label>
      <asp:TextBox ID="registrationLastName" CssClass="form-control margin-bottom-10" runat="server"></asp:TextBox>

      <asp:Label ID="AddressLabel" runat="server" Text="Address:"></asp:Label>
      <asp:TextBox ID="registrationAddress" runat="server" CssClass="form-control margin-bottom-10"></asp:TextBox>

      <asp:Label ID="CityLabel" runat="server" Text="City:"></asp:Label>
      <asp:TextBox ID="registrationCity" runat="server" CssClass="form-control margin-bottom-10"></asp:TextBox>

      <asp:Label ID="StateLabel" runat="server" Text="State:"></asp:Label>
      <asp:TextBox ID="registrationState" CssClass="form-control margin-bottom-10" runat="server"></asp:TextBox>

      <asp:Label ID="ZipLabel" runat="server" Text="Zip:"></asp:Label>
      <asp:TextBox ID="registrationZip" CssClass="form-control margin-bottom-10" runat="server"></asp:TextBox>

      <asp:Label ID="GenderLabel" runat="server" Text="Gender:"></asp:Label>
      <asp:RadioButtonList ID=RadioButtonList1 runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
      </asp:RadioButtonList>
      <asp:RequiredFieldValidator CssClass=forceDisplay ID=RequiredFieldValidator1 runat="server" ControlToValidate=RadioButtonList1 ForeColor=red ErrorMessage="Gender required"></asp:RequiredFieldValidator>


      <br/>

      <asp:Label ID="GenreLabel" runat="server" Text="Favorite Genre:"></asp:Label>
      <asp:DropDownList CssClass="form-control radio" ID="DropDownList1" runat="server">
        <asp:ListItem>NonFiction</asp:ListItem>
        <asp:ListItem>Fiction</asp:ListItem>
      </asp:DropDownList>
      <asp:Button ID=RegistrationButton runat="server" Text="Register" CssClass="RegistrationSubmit btn btn-primary" OnClick=RegistrationButton_Click />
      <asp:Label  ID=acceptanceLabel runat="server" Text="" CssClass="forceDisplay margin-top-10"></asp:Label>
    </div>
    <div class="col-sm-4">
     

    </div>
  </div>
</asp:Content>
