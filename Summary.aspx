<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="row">
    <div class="col-sm-6">
      <asp:Image ID=SummaryCover runat="server" ImageUrl="images/placeholder.png" CssClass="summaryCover" />
    </div>
    <div class="col-sm-6">
      <div class="row">
        <div class="col-sm-3">
          <asp:Label ID=TitleLabel runat="server" Text="Title:" CssClass="lead"></asp:Label>
        </div>
        <div class="col-sm-7">
          <p id="TitleContent" runat="server" class="lead">placeholder</p>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-3">
          <asp:Label ID=AuthorLabel runat="server" CssClass="lead" Text="Author:"></asp:Label>
        </div>
        <div class="col-sm-7">
          <p id="AuthorContent" class="lead"  runat="server">placeholder</p>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-3">
          <asp:Label ID=DetailsLabel class="lead" runat="server" CssClass="lead" Text="Details:"></asp:Label>
        </div>
        <div class="col-sm-7">
          <p id="DetailsContent" class="lead" runat="server">placeholder</p>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <asp:Label ID=PriceLabel runat="server" CssClass="lead" Text="Price:"></asp:Label>
        </div>
        <div class="col-sm-7">
          <p id="PriceContent" class="lead" runat="server">placeholder</p>
        </div>
      </div>
    </div>
  </div>
</asp:Content>