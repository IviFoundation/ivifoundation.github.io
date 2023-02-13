
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/overview.aspx.cs" Inherits="about_overview" Title="IVI Overview"%>

<%@ Register Src="../_controls/AboutMenu.ascx" TagName="AboutMenu" TagPrefix="uc1" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="leftCol">
        <uc1:AboutMenu ID="AboutMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Overview</h1>
        <p>
            The IVI standards define an open driver architecture, a set of instrument classes, and shared software components. Together these provide critical elements needed for instrument interchangeability.
        </p>
        
        <strong>Benefits</strong>

            <p>IVI offers several benefits to measurement system designers: </p>

            <ul>
                <li>
                    IVI's defined Application Programming Interfaces (APIs) standardize common measurement functions reducing the time needed to 
                    learn a new IVI instrument.
                </li>
                <li>
                    Instrument simulation allows developers to run code without an instrument. This feature reduces the need for sometimes scarce 
                    measurement hardware hardware resources and it can simplify testing of measurement applications.
                </li>
                <li>
                    IVI drivers feature enhanced ease of use in popular Application Development Environments. IVI's standard APIs, combined with IVI 
                    driver wrappers where appropriate, provide fast, intuitive access to driver functions.
                </li>
                <li>
                    IVI drivers provide for interchangeability. Interchangeability reduces the time and effort needed to integrate measurement devices 
                    into new or existing systems
                </li>
            </ul>
           
        <strong>Interchangeability</strong>

        <p>
            Systems designed with IVI drivers enjoy the benefits of standardized code that can be interchanged into other systems. 
            This code also supports interchange of measurement devices -- helping to prevent hardware obsolescence. Interchangeability 
            is supported on three levels: The IVI architecture specifications allow architectural interchangeability -- that is a 
            standard driver architecture that can be reused. The class specifications provide syntactic interchangeability which 
            supports instrument exchange with minimal code changes. The highest level of interchangeability is achieved by using the 
            IVI signal specifications. 
        </p>
        
        <p><img src="../images/Interchangeability.jpg" /></p>
        
        <strong>More Information</strong>

        <p>For a printable overview of IVI, view/download  the <a href="../docs/IVI TriFold Brochure 2013.pdf">IVI TriFold Brochure 2013</a>.</p>









        
        
      <p>&nbsp;</p>
    </div>
   
</asp:Content>
