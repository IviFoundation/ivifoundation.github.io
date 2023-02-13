<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/news/default.aspx.cs" Inherits="news_Default" Title="IVI News"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<%@ Register src="../_controls/NewsMenu.ascx" tagname="NewsMenu" tagprefix="uc1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
        <uc1:NewsMenu ID="NewsMenu1" runat="server" />
    </div>
 
    <div id="rightCol">
       
        <h1>News</h1>
        <p>
            <strong>Recent IVI News: </strong>
        </p>
        <asp:Repeater ID="newsRep" runat="server">
            
            <ItemTemplate>
                <p>
                <strong><%# DataBinder.Eval(Container.DataItem, "Headline")%></strong>, <%# String.Format("{0:d}",DataBinder.Eval(Container.DataItem,"DisplayDate")) %>
                <br />
                    <%# DataBinder.Eval(Container.DataItem, "Summary")%>&nbsp;&nbsp;
                    <a href="news_detail.aspx?ID=<%# DataBinder.Eval(Container.DataItem, "ID")%>">Full Story</a>
                
                </p>
            </ItemTemplate>
            
        </asp:Repeater>

        
        <div class="basicLine"></div>

        <p>
            <strong>Prior IVI Press Releases:
        </strong>
        </p> 
        <p>
            Go to the <a href="news_archive.aspx">IVI News Archive </a>
        </p>
        <p>&nbsp;</p>
    </div>
</asp:Content>