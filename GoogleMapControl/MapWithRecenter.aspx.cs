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

public partial class Samples_SimpleMapWithMovingPushPins : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //You must specify Google Map API Key for this component. You can obtain this key from http://code.google.com/apis/maps/signup.html
            //For samples to run properly, set GoogleAPIKey in Web.Config file.
            GoogleMapForASPNet1.GoogleMapObject.APIKey = ConfigurationManager.AppSettings["GoogleAPIKey"];

            //Specify width and height for map. You can specify either in pixels or in percentage relative to it's container.
            GoogleMapForASPNet1.GoogleMapObject.Width = "800px"; // You can also specify percentage(e.g. 80%) here
            GoogleMapForASPNet1.GoogleMapObject.Height = "600px";

            //Specify initial Zoom level.
            GoogleMapForASPNet1.GoogleMapObject.ZoomLevel = 14;

            //Specify Center Point for map. Map will be centered on this point.
            GooglePoint GP = new GooglePoint();  //"1", , 
            GP.Latitude = 43.66619;
            GP.Longitude = -79.44268;
            GP.ToolTip = "Center Point";
            GP.InfoHTML = "This is center point";
            //Disable Automatic Boundary and Zoom to allow positioning map to a new point.
            GoogleMapForASPNet1.GoogleMapObject.AutomaticBoundaryAndZoom=false;
            GoogleMapForASPNet1.GoogleMapObject.CenterPoint = GP;
            GoogleMapForASPNet1.GoogleMapObject.Points.Add(GP);
        }
    }
    protected void btnRecenter_Click(object sender, EventArgs e)
    {
        //Note that buttons are placed inside an Ajax UpdatePanel. This is to prevent postback of the page.
        //Recenter Map to a new google point.
        GooglePoint GP = new GooglePoint();
        GP.Latitude = 43.67619;
        GP.Longitude = -79.45268;
        GP.IconImage = "icons/pushpin-yellow.png";
        GP.ToolTip = "New Center Point";
        GP.InfoHTML = "This is a new center point";
        GoogleMapForASPNet1.GoogleMapObject.CenterPoint = GP;
        GoogleMapForASPNet1.GoogleMapObject.Points.Add(GP);
        
        //You must set following property in order to Recenter a map.
        GoogleMapForASPNet1.GoogleMapObject.RecenterMap = true;

    }

}
