<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" 
CodeFile="~/admin/news/default.aspx.cs" Inherits="admin_news_default" Title="IVI News Maintenance"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
      <!-- #include file="_nav2.aspx -->
    </div>
 
    <div id="rightCol">
        <h1>News Administration</h1>
        
        <p>
            <strong>News Stories</strong><br />
            
            <asp:Repeater ID="newsListRep" runat="server" OnItemCommand="newsListRep_ItemCommand">
                <ItemTemplate>
                        <asp:LinkButton ID="btnEdit" CssClass="up" CommandName="Edit" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"ID").ToString() %>' Runat="server">
                            <%# String.Format("{0:d}",DataBinder.Eval(Container.DataItem,"DisplayDate")) %> - 
                            <%# DataBinder.Eval(Container.DataItem,"Headline").ToString() %>
                        </asp:LinkButton><br />                    
                    
                </ItemTemplate>
            </asp:Repeater>
            
        </p>
     <p>&nbsp;</p>
    </div>
</asp:Content>