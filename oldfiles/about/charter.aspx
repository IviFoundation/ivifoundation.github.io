
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/about/charter.aspx.cs" Inherits="about_charter" Title="IVI Charter"%>

<%@ Register Src="../_controls/AboutMenu.ascx" TagName="AboutMenu" TagPrefix="uc1" %>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="leftCol">
        <uc1:AboutMenu ID="AboutMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>Charter</h1>
        <p>
            The primary purpose of the IVI Foundation is to promote the development and adoption of standards for 
            programming test instruments. In doing so, the Foundation focuses on the needs of people that build and 
            maintain high performance test systems with off-the-shelf instrument drivers. The IVI Foundation builds 
            on existing industry standards to create specifications that simplify interchanging instruments and provide 
            better performance and simplified maintenance. 
        </p>
        <p>&nbsp;</p>
    </div>
   
</asp:Content>
