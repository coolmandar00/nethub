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

public partial class MapWithGeocoding : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //GoogleMapForASPNet1.
    }
    protected void btnGeocode_Click(object sender, EventArgs e)
    {
        lblError.Text = "";
        if (txtAPIKey.Text == "")
        {
            lblError.Text = "Please provide Google API Key. To obtain google map api key, go to http://code.google.com/apis/maps/signup.html";
            return;
        }
        GooglePoint GP = new GooglePoint();
        GP.Address = txtAddress.Text;
        //GeocodeAddress() function will geocode address and set Latitude and Longitude of GP(GooglePoint) to it's respected value.
        if (GP.GeocodeAddress(txtAPIKey.Text))
        {
            //Once GP is geocoded, you can add it to google map.
            GP.InfoHTML = GP.Address;
            //Set GP as center point.
            GoogleMapForASPNet1.GoogleMapObject.CenterPoint = GP;
            
            //Clear any existing
            GoogleMapForASPNet1.GoogleMapObject.Points.Clear();
            //Add geocoded GP to GoogleMapObject
            GoogleMapForASPNet1.GoogleMapObject.Points.Add(GP);
            GoogleMapForASPNet1.GoogleMapObject.ZoomLevel = 15;
            //Recenter map to GP.
            GoogleMapForASPNet1.GoogleMapObject.RecenterMap = true;
        }
        else
        {
            lblError.Text = "Unable to geocode this address.";
        }
    }
}
