<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MapWithGeocoding.aspx.cs" Inherits="MapWithGeocoding" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<%@ Register Src="~/GoogleMapForASPNet.ascx" TagName="GoogleMapForASPNet" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Google map with Geocoding capability</title>
</head>
<body>
    <h3><a href="Default.aspx">Back</a></h3>
    <form id="form1" runat="server">
        <h3>Google map with Geocoding capability.</h3>
    Enter address or place name or postalcode and click on "Geocode Address". You need
        to enter Google API Key below.&nbsp;<br />
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
<table>
<tr>
<td valign="top" align="right">Google API Key :</td><td><asp:TextBox ID="txtAPIKey" Width="200px" runat="server"></asp:TextBox></td>
</tr>
<tr><td valign="top" align="right">Address :</td><td><asp:TextBox ID="txtAddress" runat="server" Height="96px" TextMode="MultiLine" Width="200px">Scarborough, ON, CANADA</asp:TextBox></td></tr>
<tr>
<td></td><td><asp:Button ID="btnGeocode" runat="server" Text="Geocode Address" OnClick="btnGeocode_Click"  /></td>
</tr>
<tr>
<td></td>
<td><asp:Label ID="lblError" ForeColor="red" runat="server" Text=""></asp:Label></td>
</tr>
</table>        
        
            
        </ContentTemplate>
        </asp:UpdatePanel>
    <div>
        <uc1:GoogleMapForASPNet ID="GoogleMapForASPNet1" runat="server" />
    </div>
        <h3><a href="Default.aspx">Return to Samples Index</a></h3>

    </form>
</body>
</html>
