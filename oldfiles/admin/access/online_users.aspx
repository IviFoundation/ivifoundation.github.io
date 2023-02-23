<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="leftCol">
        <!-- #include file="_nav.aspx -->
    </div>
    <div id="rightCol">
        <h1>
            Online Users</h1>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table class="webparts">
                    <tr>
                        <td class="details" valign="top">
                            <!-- #include file="_nav3.aspx -->
                            <br />
                            <div id="usergrid">
                                <asp:GridView runat="server" ID="Users" AutoGenerateColumns="False" CssClass="userList"
                                    GridLines="None" AllowSorting="True" DataSourceID="odsUsers">
                                    <Columns>
                                        <asp:HyperLinkField DataTextField="UserName" HeaderText="Email" SortExpression="UserName"
                                            DataNavigateUrlFields="UserName" DataNavigateUrlFormatString="edit_user.aspx?username={0}" />
                                        <asp:BoundField DataField="comment" HeaderText="Comments" SortExpression="comment" />
                                        <asp:BoundField DataField="creationdate" HeaderText="Created" HtmlEncode="false"
                                            SortExpression="creationdate" DataFormatString="{0:MM/dd/yy hh:mm tt}">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="lastlogindate" HeaderText="Last<br />Login"
                                            HtmlEncode="false" SortExpression="lastlogindate" DataFormatString="{0:MM/dd/yy hh:mm tt}">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="isapproved" HeaderText="Active" SortExpression="isapproved">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="isonline" HeaderText="Online" SortExpression="isonline">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="islockedout" HeaderText="Locked<br />Out" HtmlEncode="false" SortExpression="islockedout">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:ObjectDataSource ID="odsUsers" runat="server" DeleteMethod="Delete" SortParameterName="SortData"
        InsertMethod="Insert" SelectMethod="GetMembers" TypeName="MembershipUtilities.MembershipUserODS"
        OldValuesParameterFormatString="original_{0}" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter Name="sortData" Type="String" />
            <asp:Parameter Name="nameFilterData" Type="String" />
            <asp:Parameter Name="roleFilterData" Type="String" />
            <asp:Parameter Name="onlyActive" Type="String" />
            <asp:Parameter Name="onlyOnline" Type="String" DefaultValue="true" />
            <asp:Parameter Name="onlyLockedOut" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="isApproved" Type="Boolean" />
            <asp:Parameter Name="comment" Type="String" />
            <asp:Parameter Name="lastLockoutDate" Type="DateTime" />
            <asp:Parameter Name="creationDate" Type="DateTime" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="lastActivityDate" Type="DateTime" />
            <asp:Parameter Name="providerName" Type="String" />
            <asp:Parameter Name="isLockedOut" Type="Boolean" />
            <asp:Parameter Name="lastLoginDate" Type="DateTime" />
            <asp:Parameter Name="isOnline" Type="Boolean" />
            <asp:Parameter Name="passwordQuestion" Type="String" />
            <asp:Parameter Name="lastPasswordChangedDate" Type="DateTime" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="passwordAnswer" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="isApproved" Type="Boolean" />
            <asp:Parameter Name="comment" Type="String" />
            <asp:Parameter Name="lastActivityDate" Type="DateTime" />
            <asp:Parameter Name="lastLoginDate" Type="DateTime" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
