<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/news/news_archive.aspx.cs" Inherits="news_news_archive" Title="IVI News Archive"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/NewsMenu.ascx" tagname="NewsMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
   <div id="leftCol">
        <uc1:NewsMenu ID="NewsMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>News Archive</h1>
        <br />
        <p>
            <!--ul>
                <li><a href="../docs/press_releases/IVIPressReleaseATC2005.doc" target="_blank">September 2005 - Press Release (San Diego, California)</a></li> 
                <li><a href="../docs/press_releases/IVIMediaAlert May2004.doc" target="_blank">May 2004 - Media Alert (San Diego, California) </a></li>
                <li><a href="PressConferenceOct2002.aspx">October 2002 - IVI Press Event at AUTOTESTCON (Huntsville, Alabama)</a></li> 
                <li><a href="../docs/press_releases/IVI release August 2001.doc" target="_blank">August 2001 - Press Release (San Diego, California) </a></li>
                <li><a href="../docs/press_releases/IVIMediaAdvisory Sep2000.doc" target="_blank">September 2000 - Media Advisory (Fort Collins, Colorado) </a></li>
                <li>June 2000 - Media Alert (Claysburg, Pennsylvania)</li>
                <li>March 2000 - Press Event (Anaheim, California)</li>
                <li>November 1999 - Press Event (Munich, Germany)</li>
                <li><a href="../docs/press_releases/IVIMediaAdvisory Oct1999.doc" target="_blank">October 1999 - Media Alert (Austin, Texas) </a></li>
            </ul-->
            
            <asp:repeater ID="newsRep" runat="server">
               
                    <ItemTemplate>
                        <a href="news_detail.aspx?ID=<%# DataBinder.Eval(Container.DataItem, "ID")%>"><%# String.Format("{0:d}",DataBinder.Eval(Container.DataItem,"DisplayDate")) %> - <strong><%# DataBinder.Eval(Container.DataItem, "Headline")%></strong></a><br />
                    </ItemTemplate>
                
            </asp:repeater>
            
        </p>
        <p>&nbsp;</p>
    </div>
</asp:Content>
