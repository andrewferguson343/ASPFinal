<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="row header">
    <div class="col-sm-3 selected"><a href="home.aspx">Home</a></div>
    <div class="col-sm-3">Browse Books</div>
    <div class="col-sm-3">Profile</div>
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
                    <img class="bookCover" src="images/NorseCover.jpeg" />
                  </div>
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/HyperionCover.jpg" />
                  </div>
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/maladiesCover.jpg" />
                  </div>
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/1984-book-cover.jpg" />
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/brothersCover.jpg" />
                  </div>
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/cCover.jpg" />
                  </div>
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/gunsCover.jpg" />
                  </div>
                  <div class="col-sm-3">
                    <img runat="server" onclick="" class="bookCover" src="images/lotCover.jpg" />
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/itCover.jpg" />
                  </div>
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/ringsCover.jpg" />
                  </div>
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/shiningCover.jpg" />
                  </div>
                  <div class="col-sm-3">
                    <img class="bookCover" src="images/whatCover.png" />
                  </div>
                </div>
              </div>
            </div>
          </div>
          <a class="carousel-control-next" href="#topBooksSlide" role="button" data-slide="next">
            <span aria-hidden="true">Next Page > </span>
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-9"></div>
        <div class="col-sm-3">
          <a style="float: right;" href="books.aspx">View All > </a>
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
          <a style="float: right;" href="books.aspx">View All > </a>
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
          <a style="float: right" href="books.aspx">View All > </a>
        </div>
      </div>
    </div>
  </div>
</asp:Content>