<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" ValidateRequest="false"
CodeFile="~/admin/news/add_news.aspx.cs" Inherits="admin_news_add_news" Title="IVI News Maintenance"%>
<%@ MasterType virtualpath="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
        <!-- #include file="_nav2.aspx -->
    </div>
 
    <div id="rightCol">
        <h1>News Administration</h1>
        <p></p>
        
        <div class="adminCont">
            <div class="adminHeader">
               Add News
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
                    <asp:CustomValidator Runat="server" ControlToValidate="displayDateTxt" EnableClientScript="False" ErrorMessage="Invalid DateTime Format"
                    ID="CustomvalidatorDate" OnServerValidate="CustomValidatorDateMethod"></asp:CustomValidator>
                </div>
            
            <div class="adminRow">
                <div class="adminTitle">Display?</div>
                <div class="adminItem"><asp:CheckBox ID="displayFlagChk" runat="server" Checked="true" /></div>
            </div>
            
            <div class="adminRow">
                <div class="adminTitle"></div>
                <div class="adminItem">
                    <asp:Button ID="submitBtn" runat="server" Text="Submit" UseSubmitBehavior="true" OnClick="submitBtn_Click" />
                    <input type="button" id="cancelBtn" runat="server" value="Cancel" onclick="window.open('default.aspx','_parent');"/>
                </div>
            </div>
        </div>
        
        <p>&nbsp;</p>
    </div>
</asp:Content>