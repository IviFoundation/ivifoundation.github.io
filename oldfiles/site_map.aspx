<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"
    CodeFile="~/site_map.aspx.cs" Inherits="site_map" Title="Site Map" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rightCol">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Site Map" Font-Bold="True"></asp:Label><br />
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ShowLines="True" >
        </asp:TreeView>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    </p>
    </div>
</asp:Content>
