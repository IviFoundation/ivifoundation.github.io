<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/admin/default.aspx.cs" Inherits="admin_default" Title="IVI Admin Maintenance"%>

<%@ Register Src="../_controls/adminmenu.ascx" TagName="adminmenu" TagPrefix="uc1" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
        <uc1:adminmenu ID="Adminmenu1" runat="server" />
        
    </div>
 
    <div id="rightCol">
        <h1>IVI Administration</h1>
        
        <p>
           This is the administration area of the IVI website.  Please use the menu on the left to navigate to specific functionality.  This includes Account Administration, News Administration, Meetings and Access Control.  
            
        </p>
     <p>&nbsp;</p>
    </div>
</asp:Content>