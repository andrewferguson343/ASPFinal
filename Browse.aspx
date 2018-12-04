<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Browse.aspx.cs" Inherits="Browse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="row header">
    <div class="col-sm-3 selected"><a href="home.aspx">Home</a></div>
    <div class="col-sm-3"><a href=Browse.aspx>Browse Books</a></div>
    <div class="col-sm-3"><a href="profilePage.aspx">Profile</a></div>
    <div class="col-sm-3"><a href="registration.aspx">Register</a></div>
  </div>

  <div class="row margin-top-25 margin-bottom-30">
    <div class="col-sm-3">
      <asp:ImageButton ID=Norse runat="server" ImageUrl="images/NorseCover.jpeg" CssClass=bookCover   CustomParameter=1 />
    </div>
    <div class="col-sm-3">
      <asp:ImageButton ID=Hyperion runat="server" ImageUrl="images/HyperionCover.jpg" CssClass=bookCover   CustomParameter=2 />
    </div>
    <div class="col-sm-3">
      <asp:ImageButton ID=Maladies runat="server" ImageUrl="images/maladiesCover.jpg" CssClass=bookCover   CustomParameter=3 />
    </div>
    <div class="col-sm-3">
      <asp:ImageButton ID=OrwellCover runat="server" ImageUrl="images/1984-book-cover.jpg" CssClass=bookCover   CustomParameter=4 />
    </div>
  </div>
  <div class="row margin-top-25 margin-bottom-30">
    <div class="col-sm-3">
      <asp:ImageButton ID=Brothers runat="server" ImageUrl="images/brothersCover.jpg" CssClass=bookCover   CustomParameter=5 />
    </div>
    <div class="col-sm-3">
      <asp:ImageButton ID=C runat="server" ImageUrl="images/cCover.jpg" CssClass=bookCover   CustomParameter=6 />
    </div>
    <div class="col-sm-3">
      <asp:ImageButton ID=Guns runat="server" ImageUrl="images/gunsCover.jpg" CssClass=bookCover   CustomParameter=7 />
    </div>
    <div class="col-sm-3">
      <asp:ImageButton ID=Lot runat="server" ImageUrl="images/lotCover.jpg" CssClass=bookCover CustomParameter=8/>
    </div>
  </div>
  <div class="row margin-top-25 margin-bottom-30">
    <div class="col-sm-3">
      <asp:ImageButton ID=It runat="server" ImageUrl="images/itCover.jpg" CssClass=bookCover CustomParameter=9 />
    </div>
    <div class="col-sm-3">
      <asp:ImageButton ID=Rings runat="server" ImageUrl="images/ringsCover.jpg" CssClass=bookCover CustomParameter=10 />
    </div>
    <div class="col-sm-3">
      <asp:ImageButton ID=Shining runat="server" ImageUrl="images/shiningCover.jpg" CssClass=bookCover CustomParameter=11/>
    </div>
    <div class="col-sm-3">
      <asp:ImageButton ID=ImageButton1 runat="server" ImageUrl="images/whatCover.png" CssClass=bookCover CustomParameter=12 />
    </div>
  </div>
</asp:Content>