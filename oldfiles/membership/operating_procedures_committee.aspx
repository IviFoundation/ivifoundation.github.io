<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/membership/operating_procedures_committee.aspx.cs" Inherits="membership_operating_procedures_committee" Title="IVI Membership Operating Procedures Committee"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/CommitteeMenu.ascx" tagname="CommitteeMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

     <div id="leftCol">
        <uc1:CommitteeMenu ID="CommitteeMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Operating Procedures Committee</h1>
        <p>
            The Operating Procedures Committee is responsible for IVI specification 1.2, the IVI Operating Procedures.  IVI-1.2 Operating Procedures describe IVI Foundation rules and practices regarding how we conduct business. All discussions and business conducted in any forum within the foundation must conform to these procedures.
        </p>
        <p>
            The bylaws provide some basic guidelines on operating procedures.  IVI-1.2 IVI Operating procedures provides additional detail and procedures about such topics as conducting meetings, determining quorum, and taking votes by e-mail and in person.  If the Operating Procedures are ever found to be in conflict with the bylaws, that is a flaw in the Operating Procedures and the bylaws take precedence.
        </p>
        <p>
            To download the latest version of the operating procedures see: <a href="../specifications/default.aspx">Specifications</a>
        </p>
        <p>
            To download the bylaws see: <a href="../about/bylaws.aspx">About > Bylaws</a>
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>