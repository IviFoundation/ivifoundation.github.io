<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="meetings_2007Feb_Default" Title="February 2001 Meeting Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="leftCol">
    </div>
 
    <div id="rightCol">
<h1>
    February 2001 Meeting Information
</h1><br />
    <br />
        <asp:HyperLink ID="hlAgenda" runat="server" NavigateUrl="~/meetings/2001Feb/Februrary 2001 Meeting Agenda.doc">Agenda</asp:HyperLink><br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/meetings/2001Feb/2001FebMeetingSummary.doc">Meeting Minutes</asp:HyperLink><br /><br />
        <br />
        <br />
        Useful links from the meeting:<br /><br />
        <ul>
            <li>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/meetings/2001Feb/DCOM Integrator V. 5 031201.doc">DCOM document relating to Tuesday night's demo</asp:HyperLink>
            </li>
        </ul>
    </div>
</asp:Content>

