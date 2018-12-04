using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml;

public partial class Summary : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    setText();
  }

  public void setText()
  {
    string XMLDBPath;
    XMLDBPath = ConfigurationManager.AppSettings["XMLDBPath"];
    XmlDocument xml = new XmlDocument();
    xml.Load(XMLDBPath);


    long id = (long)Session["bookId"];
    XmlNode node = xml.SelectSingleNode(string.Format("BookList/Book[Id = '{0}']", id));

    XmlNodeList info = node.ChildNodes;

    TitleContent.InnerHtml = info[1].InnerText;
    AuthorContent.InnerHtml = info[2].InnerText;
    DetailsContent.InnerText = info[3].InnerText;
    PriceContent.InnerText = "$" + info[4].InnerText;
    SummaryCover.ImageUrl = info[5].InnerText;
  }
}