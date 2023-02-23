<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/membership/committees.aspx.cs" Inherits="membership_committees" Title="IVI Membership Committees"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/CommitteeMenu.ascx" tagname="CommitteeMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

     <div id="leftCol">
        <uc1:CommitteeMenu ID="CommitteeMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Committees</h1>
        <p>
            Virtually all work within the IVI foundation is done in Committees that are appointed by the board of directors.
        </p>
        <p>
            Foremost is the <a href="technical_committee.aspx">Technical Committee</a>, which is the technical arm of the IVI Foundation; sub-groups of the 
            Technical Committee, called working groups, develop the IVI specifications.
        </p>
        <p>
            However, there is other important work to be done. With Anti-trust and Intellectual Property (IP) issues to be 
            considered, we must be careful to obey the law and be careful to handle software issues properly. This is the job 
            of the <a href= "legal_committee.aspx">Legal Committee</a>.
        </p>
        <p>
            We feel that IVI is a significant contribution to the state-of-the-art of configuring and maintaining a robust ATE 
            system that can be maintained through generations of test equipment. However, inventing the solution is not enough. 
            We must make sure that potential customers understand the power and benefits of IVI drivers, so that the will be widely 
            adopted. This is the job of the <a href= "marketing_committee.aspx">Marketing Committee</a>.
        </p>
        <p>
            The IVI Foundation is fortunate to have a strong group of current and potential IVI users as members. These users 
            provide constructive feedback on how to make the IVI specifications, and especially the current implementation of 
            IVI drivers, as useful and beneficial as possible to users. This feedback is the main task of the <a href="user_committee.aspx">Users Committee</a>.
        </p>
        <p>
            Finally the <a href="operating_procedures_committee.aspx">Operating Procedures Committee</a> is working to formalize and streamline IVI's internal operating 
            procedures and policies. 
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>