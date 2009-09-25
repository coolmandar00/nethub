<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MapWithDraggableIcons.aspx.cs" Inherits="Samples_MapWithDraggableIcons" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<%@ Register Src="~/GoogleMapForASPNet.ascx" TagName="GoogleMapForASPNet" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Google Map with draggable pushpins</title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <h3><a href="Default.aspx">Back</a></h3>
    <h3>Google map with draggable pushpins.</h3>
    Drag any pushpin and see changed latitude and longitude value at bottom of page.
    <div>
        <uc1:GoogleMapForASPNet ID="GoogleMapForASPNet1" runat="server" />
    </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            Last Pushpin Moved : <asp:Label ID="lblLastPushpin" runat="server" Text=""></asp:Label><br />
            Pushpin1 : <asp:Label ID="lblPushpin1" runat="server" Text=""></asp:Label><br />
            Pushpin2 : <asp:Label ID="lblPushpin2" runat="server" Text=""></asp:Label><br />
            Pushpin3 : <asp:Label ID="lblPushpin3" runat="server" Text=""></asp:Label><br />
        </ContentTemplate>
        </asp:UpdatePanel>

    </form>
        <h3><a href="Default.aspx">Return to Samples Index</a></h3>

</body>
</html>
