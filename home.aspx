<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="row header">
    <div class="col-sm-3 selected"><a href="home.aspx">Home</a></div>
    <div class="col-sm-3"><a href=Browse.aspx>Browse Books</a></div>
    <div class="col-sm-3"><a href="profilePage.aspx">Profile</a></div>
    <div class="col-sm-3"><a href="registration.aspx">Register</a></div>
  </div>
  <div class="row" id="Welcome">
    <div class="col-sm-12">
      <h3 id="topBooksHeader">Top Books This Season</h3>
      <div class="row" style="margin-top: 25px;">
        <div class="col-sm-12">
          <div id="topBooksSlide" class="carousel slide">
            <ol class="carousel-indicators">
              <li data-target="#topBooksSlide" data-slide-to="0" class="active"></li>
              <li data-target="#topBooksSlide" data-slide-to="1"></li>
              <li data-target="#topBooksSlide" data-slide-to="2"></li>
            </ol>
            <div class="CarouselInner">
              <div class="carousel-item active">
                <div class="row">
                  <div class="col-sm-3">
                    <asp:ImageButton ID=Norse runat="server" ImageUrl= "images/NorseCover.jpeg" CssClass=bookCover OnClick=loadBook CustomParameter=1 />
                  </div>
                  <div class="col-sm-3">
                    <asp:ImageButton ID=Hyperion runat="server" ImageUrl="images/HyperionCover.jpg" CssClass=bookCover  OnClick=loadBook CustomParameter=2 />
                  </div>
                  <div class="col-sm-3">
                    <asp:ImageButton ID=Maladies runat="server" ImageUrl="images/maladiesCover.jpg" CssClass=bookCover  OnClick=loadBook CustomParameter=3  />
                  </div>
                  <div class="col-sm-3">
                    <asp:ImageButton ID=OrwellCover runat="server" ImageUrl="images/1984-book-cover.jpg" CssClass=bookCover  OnClick=loadBook CustomParameter=4  />
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="col-sm-3">
                    <asp:ImageButton ID=Brothers runat="server" ImageUrl="images/brothersCover.jpg" CssClass=bookCover OnClick=loadBook CustomParameter=5 />
                  </div>
                  <div class="col-sm-3">
                    <asp:ImageButton ID=C runat="server" ImageUrl="images/cCover.jpg" CssClass=bookCover OnClick=loadBook CustomParameter=6  />
                  </div>
                  <div class="col-sm-3">
                    <asp:ImageButton ID=Guns runat="server" ImageUrl="images/gunsCover.jpg" CssClass=bookCover  OnClick=loadBook CustomParameter=7 />
                  </div>
                  <div class="col-sm-3">
                    <asp:ImageButton ID=Lot runat="server" ImageUrl="images/lotCover.jpg"  OnClick=loadBook CssClass=bookCover CustomParameter=8 />
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="col-sm-3">
                    <asp:ImageButton ID=It runat="server" ImageUrl="images/itCover.jpg" OnClick=loadBook CssClass=bookCover CustomParameter=9 />
                  </div>
                  <div class="col-sm-3">
                    <asp:ImageButton ID=Rings runat="server" ImageUrl="images/ringsCover.jpg" OnClick=loadBook CssClass=bookCover CustomParameter=10 />
                  </div>
                  <div class="col-sm-3">
                    <asp:ImageButton ID=Shining runat="server" ImageUrl="images/shiningCover.jpg" OnClick=loadBook  CssClass=bookCover CustomParameter=11/>
                  </div>
                  <div class="col-sm-3">
                    <asp:ImageButton ID=ImageButton1 runat="server" ImageUrl="images/whatCover.png" OnClick=loadBook CssClass=bookCover CustomParameter=12/>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <a class="carousel-control-next" href="#topBooksSlide"  role="button" data-slide="next">
            <span style="color:black;" aria-hidden="true">></span>
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-9"></div>
        <div class="col-sm-3">
          <a style="float: right;" href="Browse.aspx">View All > </a>
        </div>
      </div>
      <h3 class="margin-top-15">Most Popular Fiction Books</h3>
      <div class="row margin-top-15">
        <div class="col-sm-3">
          <img class="bookCover" src="images/HyperionCover.jpg" /></div>
        <div class="col-sm-3">
          <img class="bookCover" src="images/itCover.jpg" /></div>
        <div class="col-sm-3">
          <img class="bookCover" src="images/lotCover.jpg" /></div>
        <div class="col-sm-3">
          <img class="bookCover" src="images/1984-book-cover.jpg" /></div>
      </div>
      <div class="row">
        <div class="col-sm-9"></div>
        <div class="col-sm-3">
          <a style="float: right;" href="Browse.aspx">View All > </a>
        </div>
      </div>

      <h3 class="margin-top-15">Most Popular Non-Fiction Books</h3>
      <div class="row margin-top-15">
        <div class="col-sm-3">
          <img class="bookCover" src="images/cCover.jpg" /></div>
        <div class="col-sm-3">
          <img class="bookCover" src="images/brothersCover.jpg" /></div>
        <div class="col-sm-3">
          <img class="bookCover" src="images/gunsCover.jpg" /></div>
        <div class="col-sm-3">
          <img class="bookCover" src="images/whatCover.png" /></div>
      </div>
      <div class="row margin-bottom-30">
        <div class="col-sm-9"></div>
        <div class="col-sm-3">
          <a style="float: right" href="Browse.aspx">View All > </a>
        </div>
      </div>
    </div>
  </div>
</asp:Content>