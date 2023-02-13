<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="meetings_2007Feb_Default" Title="November 1999 Meeting Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="leftCol">
    </div>
 
    <div id="rightCol">
<h1>
    November 1999 Meeting Information
</h1><br />
    <br />
        <asp:HyperLink ID="hlAgenda" runat="server" NavigateUrl="~/meetings/1999Nov/Nov1999MeetingAgenda.doc">Agenda</asp:HyperLink><br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/meetings/1999Nov/99NovMeetingSummary.doc">Meeting Minutes</asp:HyperLink><br />
    </div>
</asp:Content>

