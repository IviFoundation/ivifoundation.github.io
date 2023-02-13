<%@ Page Language="C#" AutoEventWireup="true" CodeFile="driver_registry_rss.aspx.cs" Inherits="registered_drivers_driver_registry_rss" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="RssToolkit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=d9202816019f11ea"
    Namespace="RssToolkit" TagPrefix="cc1" %>
    
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Driver Registry RSS Feed</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <cc1:rsshyperlink id="RssHyperLink1" runat="server" includeusername="False" navigateurl="~/registered_drivers/rss.ashx">RSS</cc1:rsshyperlink><br />
    </div>
    </form>
</body>
</html>
