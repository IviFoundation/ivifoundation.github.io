
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/MSS.aspx.cs" Inherits="about_MSS" Title="IVI MSS"%>

<%@ Register Src="../_controls/AboutMenu.ascx" TagName="AboutMenu" TagPrefix="uc1" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="leftCol">
        <uc1:AboutMenu ID="AboutMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
     <h1>Measurement & Stimulus Subsystems (IVI-MSS)</h1>
        <p>
            The <i>Measurement and Stimulus Subsystem (IVI-MSS)</i> specification provides additional architectural help in building test and measurement solutions. IVI-MSS shows how IVI drivers, IVI shared components and other software elements can be combined together to build integrated solutions. Such solutions can provide: 
        </p>

        <ol>
            <li>The integration of multiple items of test equipment under a single interface.</li>
            <li> A higher degree of test instrument interchangeability, including in some cases semantic interchangeability.</li>
        </ol>
        <p>
            These two benefits come at the expense of additional cost and complexity beyond the requirements of IVI-Drivers. Users who are willing to consider making changes in their application programs when an instrument is interchanged or who are not concerned about aggregating several instruments together that will interoperate with multiple vendors, will not need to be concerned about IVI-MSS.
        </p>
        <p>
            Users who must be able to interchange test instruments without making any changes to either their test programs or IVI-Drivers and also be able to guarantee the measurement results, will find IVI-MSS helpful. The IVI-MSS specification contains architectural guidance and design principles needed to develop PC based solutions that meet these requirements. A key aspect of this specification is instruction on when the following IVI shared components are used: IVI-Configuration Server, IVI-Session Factory, and the IVI-Event Server.
        </p>
        <p>
            In addition to these common components, IVI-MSS solutions include two solution specific components called Measurement or Stimulus Servers and Role Control Modules. 
        </p>
        
            <strong>Additional Information:</strong>

        <p>
            MSS overview presentation: <a style="text-decoration:underline; " href= "../docs/MSS-Overview.pdf" target="_blank">IVI-MSS Overview</a><br />
            Download the full IVI-MSS specification at: <a style="text-decoration:underline; " href="../specifications/default.aspx">Specifications</a>
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
