<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="driver_registry_thank_you.aspx.cs" Inherits="registered_drivers_driver_registry_thank_you"
    Title="Register Driver Thank You Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="leftCol">
    </div>
    <div id="rightCol">
        <asp:Panel ID="pnlInsert" runat="server" Width="100%" Visible="False">
            <h1>
                Successful driver registration!<br />
                <br />
            </h1>
            Thank you for registering your driver with the IVI Foundation website.&nbsp;
            Please click the link below to return the driver registry page.<br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registered_drivers/driver_registry.aspx">Driver Registry</asp:HyperLink></asp:Panel>
        <asp:Panel ID="pnlUpdate" runat="server" Width="100%" Visible="False">
            <h1>
                Successful driver update!<br />
                <br />
            </h1>
            Thank you for updating your driver with the IVI Foundation website.&nbsp;
            Please click the link below to return the driver registry page.<br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/registered_drivers/driver_registry.aspx">Driver Registry</asp:HyperLink></asp:Panel>
        </div>
</asp:Content>
