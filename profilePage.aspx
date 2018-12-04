<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="profilePage.aspx.cs" Inherits="profilePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="row header">
    <div class="col-sm-3 selected"><a href="home.aspx">Home</a></div>
    <div class="col-sm-3">Browse Books</div>
    <div class="col-sm-3"><a href="profilePage.aspx">Profile</a></div>
    <div class="col-sm-3"><a href="registration.aspx">Register</a></div>
  </div>
  <div class="row margin-top-25" >
    <div class="col-sm-8">
      <asp:Label ID=Label1 runat="server" Text=""></asp:Label>
    </div>
    <div class="col-sm-4"></div>
  </div>
  <div class="row">
    <div class="col-sm-8">
      <asp:Label ID=Label2 runat="server" Text=""></asp:Label>
    </div>
    <div class="col-sm-4">
    </div>
  </div>
  <div class="row">
    <div class="col-sm-8">
      <asp:Label ID=Label3 runat="server" Text=""></asp:Label>
    </div>
    <div class="col-sm-4"></div>
  </div>
  <div class="row">
    <div class="col-sm-8">
      <asp:Label ID=Label4 runat="server" Text=""></asp:Label>
    </div>
    <div class="col-sm-4"></div>
  </div>
  <div class="row">
    <div class="col-sm-8">
      <asp:Label ID=Label5 runat="server" Text=""></asp:Label>
    </div>
    <div class="col-sm-4"></div>
  </div>

  <div class="row">
    <div class="col-sm-8"></div>
    <div class="col-sm-4">
      <asp:Button ID=Delete Type=button CssClass="btn btn-danger" runat="server" Text="Delete" OnClick=Delete_Click />
    </div>
  </div>
</asp:Content>