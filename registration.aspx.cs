using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml;

public partial class registration : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
  }

  protected void RegistrationButton_Click(object sender, EventArgs e)
  {
    string XMLDBPath;
    XMLDBPath = ConfigurationManager.AppSettings["XMLDBPathUsers"];
    XmlDocument xml = new XmlDocument();
    xml.Load(XMLDBPath);
    XmlNode newUser = xml.CreateNode(XmlNodeType.Element, "user", null);


    string userName = registrationUsername.Text;
    string password = registrationPassword.Text;
    string name = string.Format("{0} {1}", registrationFirstName.Text, registrationLastName.Text);
    string address = string.Format("{0}, {1}, {2}, {3}", registrationAddress.Text, registrationCity.Text, registrationState.Text, registrationZip.Text);
    string gender = RadioButtonList1.SelectedItem.Text;
    string genre = DropDownList1.SelectedItem.Text;

    Dictionary<string, string> registrationInfo = new Dictionary<string, string>();
    registrationInfo.Add("fullName", name);
    registrationInfo.Add("userName", userName);
    registrationInfo.Add("pasword", password);
    registrationInfo.Add("address", address);
    registrationInfo.Add("gender", gender);
    registrationInfo.Add("genre", genre);
    
    foreach(KeyValuePair<string,string> info in registrationInfo)
    {
      XmlElement node = xml.CreateElement(info.Key.ToString());
      node.InnerText = info.Value.ToString();
      newUser.AppendChild(node);
    }

    XmlNode root = xml.DocumentElement;
    root.AppendChild(newUser);

    xml.Save(XMLDBPath);

    acceptanceLabel.Text = "Successfully registered user.";
  }
}