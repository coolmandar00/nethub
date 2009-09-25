<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MapWithToolTipOnPushpins.aspx.cs" Inherits="Samples_MapWithTooltips" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<%@ Register Src="~/GoogleMapForASPNet.ascx" TagName="GoogleMapForASPNet" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Google Map with customized icons</title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <h3><a href="Default.aspx">Back</a></h3>
    <h3>Google map with tooltips on Pushpins.</h3>
    Mouse over on pushpins to see tooltips.
    <div>
        <uc1:GoogleMapForASPNet ID="GoogleMapForASPNet1" runat="server" />
    </div>
    <input type="button" onclick="OpenInfoWindow('1','This is pushpin 1 (via button click)')" value="Click Me" />
    </form>
        <h3><a href="Default.aspx">Return to Samples Index</a></h3>

</body>
</html>
