<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" ValidateRequest="false"
CodeFile="~/admin/news/update_news.aspx.cs" Inherits="admin_news_update_news" Title="IVI News Maintenance"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
        <!-- #include file="_nav2.aspx -->
    </div>
 
    <div id="rightCol">
        <h1>News Administration</h1>
        <p></p>
        <input type="hidden" id="hdnID" runat="server" />
        <div id="noExist" runat="server" visible="false" style="color:Red;">
            <p>News Story is no longer available.</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
        <div class="adminCont">
            <div class="adminHeader">
               Update News
            </div>
        
            <div class="adminRow">
                <div class="adminTitle">Headline:</div>
                <div class="adminItem"><asp:TextBox ID="headlineTxt" runat="server" Width="300px"></asp:TextBox></div>
            </div>
            
            <div class="adminRow">
                <div class="adminTitle">Author</div>
                <div class="adminItem"><asp:TextBox ID="authorTxt" runat="server" Width="200px"></asp:TextBox></div>
            </div>
            
            <div class="adminRow">
                <div class="adminTitle">Summary</div>
                <div class="adminItem"><asp:TextBox ID="summaryTxt" runat="server" Width="500px" Height="300px" TextMode="MultiLine"></asp:TextBox></div>
            </div>
            
            <div class="adminRow">
                <div class="adminTitle">Full Text</div>
                <div class="adminItem"><asp:TextBox ID="fullTextTxt" runat="server" Width="500px" Height="300px" TextMode="MultiLine"></asp:TextBox></div>
            </div>
            
            <div class="adminRow">
                <div class="adminTitle">Display Date</div>
                <div class="adminItem"><asp:TextBox ID="displayDateTxt" runat="server"></asp:TextBox> mm/dd/yyyy</div>
            </div>
            
            <div class="adminRow">
                <div class="adminTitle">Display?</div>
                <div class="adminItem"><asp:CheckBox ID="displayFlagChk" runat="server" Checked="true" /></div>
            </div>
            
            <div class="adminRow">
                <div class="adminTitle"></div>
                <div class="adminItem">
                    <asp:button id="btnUpdate" Runat="server" Text="Update" OnClick="btnUpdate_Click"></asp:button>
                    <input type="button" id="cancelBtn" runat="server" value="Cancel" onclick="window.open('default.aspx','_parent');"/>
                    <input class="buttons" id="btnReset" type="button" value="Reset" name="btnReset" runat="server"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:button id="btnDelete" Runat="server" Text="Delete"></asp:button>
                </div>
            </div>
        </div>
        
        
    </div>
    <p>&nbsp;</p>
</asp:Content>