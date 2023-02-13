<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="meetings_2007Feb_Default" Title="July 1999 Meeting Information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="leftCol">
    </div>
    <div id="rightCol">
        <h1>
            July 1999 Meeting Information
        </h1>
        <br />
        <br />
        <asp:HyperLink ID="hlAgenda" runat="server" NavigateUrl="~/meetings/1999Jul/July1999MeetingAgenda.doc">Agenda</asp:HyperLink><br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/meetings/1999Jul/99JulyMeetingMinutes.doc">Meeting Minutes</asp:HyperLink><br />
        <br />
        <br />
        Presentations:<br /><br />
        <ul>
            <li>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/meetings/1999Jul/LucentIVIRecommendations990729.ppt">Presentation From Carl Olen – Lucent Technologies </asp:HyperLink>
            </li>
        </ul>
    </div>
</asp:Content>
