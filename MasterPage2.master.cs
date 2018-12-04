using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml;


public partial class MasterPage2 : System.Web.UI.MasterPage
{
  protected void Page_Load(object sender, EventArgs e)
  {
    if (!string.IsNullOrEmpty((string)Session["Username"]))
    {
      signedOut.Style["display"] = "none";
      signedIn.Style["display"] = "auto";
      SignedInLabel.Text = string.Format("Hello, signed in as {0}", Session["Username"]);
    }
    if (string.IsNullOrEmpty((string)Session["UserName"]))
    {
      signedIn.Style["display"] = "none";
      signedOut.Style["display"] = "auto";
    }
  }

  protected void HeaderSignInSubmit_Click(object sender, EventArgs e)
  {
    string XMLDBPath;
    XMLDBPath = ConfigurationManager.AppSettings["XMLDBPathUsers"];
    XmlDocument xml = new XmlDocument();
    xml.Load(XMLDBPath);

    XmlNode node = xml.SelectSingleNode(string.Format("Users/user[userName ='{0}']", usernameSignIn.Text));
    try
    {
      XmlNodeList info = node.ChildNodes;
      if (PasswordSignIn.Text == info[2].InnerText)
      {
        Session["Username"] = info[1].InnerText;
        Response.Redirect("home.aspx");
      }
      else
      {
        errorLabel.Text = "Invalid Credentails, please try again.";
      }
    }
    catch
    {
      errorLabel.Text = "Invalid Credentails, please try again.";
    }

  }
}