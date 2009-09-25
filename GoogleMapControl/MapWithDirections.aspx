<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MapWithDirections.aspx.cs" Inherits="MapWithDirections" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<%@ Register Src="~/GoogleMapForASPNet.ascx" TagName="GoogleMapForASPNet" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Map with Driving Directions</title>
</head>
<body>
    <h3><a href="Default.aspx">Back</a></h3>
    <form id="form1" runat="server">
    <h3>Map with Driving Directions</h3>
    <div>
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table>
        <tr>
        <td align="right">From Address :</td><td><asp:TextBox ID="txtFrom" runat="server" Text="614 Dufferin Street, Toronto" Width="379px"></asp:TextBox></td>
        </tr>
        <tr>
        <td align="right">To Address :</td><td><asp:TextBox ID="txtTo" runat="server" Text="M8Z3L2" Width="395px"></asp:TextBox></td>
        </tr>
        <tr>
        <td></td><td><asp:Button ID="btnDrawDirections" runat="server" Text="Draw Directions" OnClick="btnDrawDirections_Click" /></td>
        </tr>
        </table>
 
                
        <br /><br />
        <uc1:GoogleMapForASPNet ID="GoogleMapForASPNet1" runat="server" />
    </div>
    </form>
</body>
</html>
