using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MapWithDirections : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //You must specify Google Map API Key for this component. You can obtain this key from http://code.google.com/apis/maps/signup.html
        //For samples to run properly, set GoogleAPIKey in Web.Config file.
        GoogleMapForASPNet1.GoogleMapObject.APIKey = ConfigurationManager.AppSettings["GoogleAPIKey"]; 

        //Specify width and height for map. You can specify either in pixels or in percentage relative to it's container.
        GoogleMapForASPNet1.GoogleMapObject.Width = "800px"; // You can also specify percentage(e.g. 80%) here
        GoogleMapForASPNet1.GoogleMapObject.Height = "600px";

        //Draw direction for default addresses
        btnDrawDirections_Click(null, null);

    }
    protected void btnDrawDirections_Click(object sender, EventArgs e)
    {
        GoogleMapForASPNet1.GoogleMapObject.ShowDirections = true;
        //Provide addresses or postal code in following lines
        GoogleMapForASPNet1.GoogleMapObject.Directions.FromAddress = txtFrom.Text; 

        GoogleMapForASPNet1.GoogleMapObject.Directions.ToAddress = txtTo.Text; 

    }
}
