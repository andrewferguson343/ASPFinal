using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml;

public partial class profilePage : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    string XMLDBPath;
    XmlNode node = null;
    XMLDBPath = ConfigurationManager.AppSettings["XMLDBPathUsers"];
    XmlDocument xml = new XmlDocument();
    xml.Load(XMLDBPath);
    if (!string.IsNullOrEmpty((string)Session["Username"]))
    {
      node = xml.SelectSingleNode(string.Format("Users/user[userName ='{0}']", (string)Session["Username"]));
    }

    if(node != null)
    {
      XmlNodeList info = node.ChildNodes;
      Label2.Text = "Name: " + info[0].InnerXml;
      Label3.Text = "Username: " + info[1].InnerXml;
      Label4.Text = "Gender: " + info[4].InnerXml;
      Label5.Text = "Favorite Genre: " + info[5].InnerXml;
    }
    else
    {
      Label1.Text = "You must sign in to view profile information.";
      Delete.Style["display"] = "none";
    }
  }

  protected void Delete_Click(object sender, EventArgs e)
  {
    string XMLDBPath;
    XmlNode node = null;
    XMLDBPath = ConfigurationManager.AppSettings["XMLDBPathUsers"];
    XmlDocument xml = new XmlDocument();
    xml.Load(XMLDBPath);
    node = xml.SelectSingleNode(string.Format("Users/user[userName ='{0}']", (string)Session["Username"]));
   if(node != null)
    {
      node.ParentNode.RemoveChild(node);
      xml.Save(XMLDBPath);
      Session["Username"] = "";
      Response.Redirect("home.aspx");
    }
  }
}