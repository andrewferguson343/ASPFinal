<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="row header">
    <div class="col-sm-3"><a href="home.aspx">Home</a></div>
    <div class="col-sm-3">Browse Books</div>
    <div class="col-sm-3">Profile</div>
    <div class="col-sm-3 selected"><a href="registration.aspx">Register</a></div>
  </div>
  <div class="row margin-top-25">
    <h5>Register for an account</h5>
  </div>
  <div class="row registrationContainer margin-top-15">
    <div class="col-sm-8">

      <asp:Label ID="FirstNameLabel" runat="server" Text="First Name:"></asp:Label>
      <asp:TextBox ID="registrationFirstName" CssClass="form-control margin-bottom-10" runat="server"></asp:TextBox>

      <asp:Label ID="LastNameLabel" runat="server" Text="Last Name:"></asp:Label>
      <asp:TextBox ID="TextBox1" CssClass="form-control margin-bottom-10" runat="server"></asp:TextBox>

      <asp:Label ID="AddressLabel" runat="server" Text="Address:"></asp:Label>
      <asp:TextBox ID="Address" runat="server" CssClass="form-control margin-bottom-10"></asp:TextBox>

      <asp:Label ID="CityLabel" runat="server" Text="City:"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control margin-bottom-10"></asp:TextBox>

      <asp:Label ID="StateLabel" runat="server" Text="State:"></asp:Label>
      <asp:TextBox ID="TextBox3" CssClass="form-control margin-bottom-10" runat="server"></asp:TextBox>

      <asp:Label ID="ZipLabel" runat="server" Text="Zip:"></asp:Label>
      <asp:TextBox ID="TextBox4" CssClass="form-control margin-bottom-10" runat="server"></asp:TextBox>

      <asp:Label ID="GenderLabel" runat="server" Text="Gender:"></asp:Label>
      <asp:RadioButton ID="RadioButton1" Text="&nbspMale:" CssClass="radio-inline registrationRadioButton" GroupName="GenderGroup" runat="server" />
      <asp:RadioButton ID="RadioButton2" Text="&nbspFemale:" CssClass="radio-inline registrationRadioButton" GroupName="GenderGroup" runat="server" />
    
      <asp:Label ID="GenreLabel" runat="server" Text="Favorite Genre:"></asp:Label>
      <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
        <asp:ListItem>NonFiction</asp:ListItem>
        <asp:ListItem>Fiction</asp:ListItem>

      </asp:DropDownList>
    </div>

    <div class="col-sm-4">
     

    </div>
  </div>
</asp:Content>
