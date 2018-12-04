using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml;

public partial class _Default : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }
  public void loadBook(object sender, EventArgs e)
  {
    long bookId = long.MinValue;
    ImageButton ib = sender as ImageButton;
    string Id = ib.Attributes["CustomParameter"].ToString();
    long.TryParse(Id, out bookId);
    Session["bookId"] = bookId;
    Response.Redirect("Summary.aspx");


  }
}