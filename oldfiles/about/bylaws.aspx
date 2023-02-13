
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/bylaws.aspx.cs" Inherits="about_bylaws" Title="IVI Bylaws"%>

<%@ Register Src="../_controls/AboutMenu.ascx" TagName="AboutMenu" TagPrefix="uc1" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="leftCol">
        <uc1:AboutMenu ID="AboutMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Bylaws</h1>
        <p>
            The IVI Foundation has adopted formal Bylaws to govern its activities.  You download the document 
            in  <a href="../downloads/Operating-Legal/ByLaws 2007-10-19.pdf">PDF</a> format.        </p>
<p>
            Below is a short synopsis of the IVI Foundation operating rules and meeting conventions: 
        </p>
        <p>
            Member companies can send as many representatives as desired  to committee meetings 
            At Technical Committee meetings, each company gets one vote regardless of the number of representatives 
            Member meetings are held in person, or by phone conference call 
            Currently member meetings are held 3-4 times per year, they usually last 2-3 days with multiple tracks and an agenda is published in advance. Individuals can choose to attend only the portions of the meeting that interest them 
            Attendees are charged nominal meeting fees to cover the cost of meeting space, continental breakfast and lunch 
            Other general communications are conducted via email 
        </p>
        <strong>Operating Procedures</strong>
        <p>
            IVI's day-to-day activities are governed by IVI specification 1.2, Operating Procedures, available on the 
            <a href="../specifications/default.aspx">Specifications</a> page. This document describes IVI Foundation rules and 
            practices for conducting business.  All discussions and business conducted in any forum within the foundation conforms 
            to these procedures.
        </p>
        <p>
            In general the foundation bylaws are the ultimate authority on foundation procedures.  If they are found to conflict in 
            any way with anything appearing in the Operating Procedures, the bylaws take precedence.
        </p>
        <p>
            Where procedures are not defined by the Operating Procedures document or the bylaws, the IVI Foundation uses Robert�s 
            Rules of order (newly revised).
        </p>
        <p>
            For more information on IVI operating procedures, see the Operating Procedure Committee page: 
            <a href="../membership/operating_procedures_committee.aspx">Membership > Committees > Operating Procedures</a>
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
