<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/news/news_detail.aspx.cs" Inherits="news_news_detail" Title="IVI News Detail"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/NewsMenu.ascx" tagname="NewsMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
        <uc1:NewsMenu ID="NewsMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
    
        <h1>News Detail</h1>
        
        <div id="newsDetail" runat="server">
            <p>
                <strong><asp:Label id="headlineLbl" runat="server"></asp:Label></strong>
            </p>
            <div id="authorDiv" runat="server">
                <asp:Label ID="authorLbl" runat="server"></asp:Label>
            </div>
            <div style="color: Gray; font-size: 8pt;">
                <asp:Label ID="displayDtLbl" runat="server"></asp:Label>
                </div>
            <p>
                <asp:Label ID="fullTextLbl" runat="server"></asp:Label>
            </p>
        </div>
        <div id="noExist" runat="server" visible="false" style="color:Red;">
            <p>News Story is no longer available.</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
            <p>&nbsp;</p>
         
    </div>
</asp:Content>