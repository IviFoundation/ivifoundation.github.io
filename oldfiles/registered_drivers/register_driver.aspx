<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"
    CodeFile="~/registered_drivers/register_driver.aspx.cs" Inherits="regstered_drivers_register_driver"
    Title="Register Driver" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
        <p>
            <a href="#" class="current">. Register New Drivers</a>
        </p>
    </div>
    <div id="rightCol">
        <h1>
            <asp:Label ID="lblTitle" runat="server" Text="Register New Drivers"></asp:Label>
        </h1>
        <p>
            The IVI Foundation requires that all IVI drivers be registered with the foundation
            before the IVI Conformant logo can be attached to the driver. To learn how IVI uses
            this information, see the IVI <a href="../privacy_policy.aspx" class="inText">Privacy
                Policy</a>.
        </p>
        <blockquote>
            <p>
                <strong>IVI New Driver Registration Policy:&nbsp;<br>
                </strong>
                <br>
                <strong><em>Note:</em></strong> Only IVI Foundation members can post drivers free-of-charge. &nbsp;
            </p>
            <ul>
                <li>Non-members can update existing drivers from June 14, 2016
                    <br>
                    free-of-charge.</li>
                <li><strong>Cost: </strong>&nbsp;For non-members, the cost for registering a <em>new</em> driver is $250 per driver after June 14, 2016.&nbsp;Email <a href="mailto:admin@ivifoundation.org">Julie Minor</a> to arrange payment by invoice or credit card. Send your company contact information and how many new drivers you intend to register. The payment will be due within two weeks of posting; otherwise, the driver will be removed from the IVI site. Alternatively, you can sign up for IVI membership at the <a href="http://ivifoundation.org/membership/how_to_join.aspx">How to Join page</a> for only $750/year, which would entitle you to post drivers free-of-charge. </li>
                <li>If you wish to join the IVI Foundation, go to the How to Join page at <a href="http://www.ivifoundation.org/membership/how_to_join.aspx">http://www.ivifoundation.org/membership/how_to_join.aspx</a>.         
                    <br>
                    <br>
                </li>
            </ul>
        </blockquote>
        <p>
            Fill out the following form to register your driver. See IVI-3.1: Driver Architecture
        Specification, Section 5.21: Compliance Documentation, available at <a href="../specifications/default.aspx"
            class="inText">Downloads > Specifications</a>, for a detailed description of
            the various fields.
        </p>
        <p>
            Note on updating an entry: You can update an entry simply by filling out this form
            again.
        </p>
        <div class="line">
        </div>
        <table cellpadding="5" cellspacing="0" border="0" width="100%">
            <tr>
                <td align="right" style="vertical-align: top;">
                    <strong>Instrument Class</strong></td>
                <td style="vertical-align: top;">
                    <asp:DropDownList ID="dlInstrumentClass" runat="server" DataTextField="InstrumentClass"
                        DataValueField="InstrumentClass" AppendDataBoundItems="True" DataSourceID="sdsInstrumentClass">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvInstrumentClass" runat="server" ControlToValidate="dlInstrumentClass"
                        ErrorMessage="Instrument class is required." ToolTip="Instrument class is required.">* Instrument class is required.</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="vertical-align: top;">
                    <strong>Instrument Manufacturer:</strong></td>
                <td style="vertical-align: top;">
                    <asp:UpdatePanel runat="server" ID="upManufacturer">
                        <ContentTemplate>
                            <asp:DropDownList ID="dlManufacturer" runat="server" DataTextField="Manufacturer"
                                DataValueField="Manufacturer" AppendDataBoundItems="True" DataSourceID="sdsInstrumentManufacturer"
                                AutoPostBack="True" OnSelectedIndexChanged="dlManufacturer_SelectedIndexChanged" OnDataBound="dlManufacturer_DataBound">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvInstrumentManufacturer" runat="server" ControlToValidate="dlManufacturer"
                                ErrorMessage="Instrument manufacturer is required." ToolTip="Instrument manufacturer is required.">* Instrument manufacturer is required.</asp:RequiredFieldValidator><br />
                            <asp:TextBox ID="tbOtherManufacturer" runat="server" CssClass="text" MaxLength="50"
                                Text="Other" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvOtherManufacturer" runat="server" ControlToValidate="tbOtherManufacturer"
                                ErrorMessage="Other instrument manufacturer is required." ToolTip="Other instrument manufacturer is required.">* Other instrument manufacturer is required.</asp:RequiredFieldValidator>&nbsp;
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" style="vertical-align: top;">
                    <strong>Supported Models:</strong></td>
                <td style="vertical-align: top;">
                    <asp:TextBox ID="tbSupportedModels" runat="server" Rows="3" TextMode="MultiLine" Width="319px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSupportedModels" runat="server" ErrorMessage="Supported Models is required."
                        ControlToValidate="tbSupportedModels" ToolTip="Supported Models is required.">* Supported Models is required.</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="vertical-align: top;">
                    <strong>Driver Vendor:</strong></td>
                <td style="vertical-align: top;">
                    <asp:UpdatePanel runat="server" ID="upVendor">
                        <ContentTemplate>
                            <asp:DropDownList ID="dlDriverVendor" runat="server" DataTextField="Vendor" DataValueField="Vendor"
                                AppendDataBoundItems="True" DataSourceID="sdsDriverVendor" OnSelectedIndexChanged="dlDriverVendor_SelectedIndexChanged"
                                AutoPostBack="True" OnDataBound="dlManufacturer_DataBound">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Text="&lt;Same as Manufacturer&gt;" Value="same as manufacturer"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvDriverVendor" runat="server" ControlToValidate="dlDriverVendor"
                                ErrorMessage="Driver vendor is required." ToolTip="Driver vendor is required.">* Driver vendor is required.</asp:RequiredFieldValidator><br />
                            <asp:TextBox ID="tbOtherVendor" runat="server" Text="Other" CssClass="text" MaxLength="50"
                                Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvOtherDriverVendor" runat="server" ControlToValidate="tbOtherVendor"
                                ErrorMessage="Other driver vendor is required." ToolTip="Other driver vendor is required.">* Other driver vendor is required.</asp:RequiredFieldValidator>&nbsp;
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="vertical-align: top;">
                    <strong>Driver Type:</strong></td>
                <td style="vertical-align: top;">
                    <asp:DropDownList ID="dlDriverType" runat="server" DataTextField="DriverType" DataValueField="DriverType"
                        AppendDataBoundItems="True" DataSourceID="sdsDriverType">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvDriverType" runat="server" ControlToValidate="dlDriverType"
                        ErrorMessage="Driver type is required." ToolTip="Driver type is required.">* Driver type is required.</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="vertical-align: top;">
                    <strong>Driver Generation:</strong></td>
                <td style="vertical-align: top;">
                    <asp:DropDownList ID="dlDriverGeneration" runat="server" DataTextField="DriverGeneration" DataValueField="DriverGeneration"
                        AppendDataBoundItems="True" DataSourceID="sdsDriverGeneration">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvDriverGeneration" runat="server" ControlToValidate="dlDriverGeneration"
                        ErrorMessage="Driver generation is required." ToolTip="Driver generation is required.">* Driver generation is required.</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="vertical-align: top;">
                    <strong>Compliance File:</strong></td>
                <td style="vertical-align: top;">
                    <asp:FileUpload ID="fuComplianceFile" runat="server" CssClass="browse" />
                    <asp:RequiredFieldValidator ID="rfvCompliance" ControlToValidate="fuComplianceFile"
                        runat="server" ErrorMessage="Compliance file is required." ToolTip="Compliance file is required.">* Compliance file is required.</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="vertical-align: top;">
                    <strong>Download Link:</strong></td>
                <td style="vertical-align: top;">
                    <asp:TextBox ID="tbDownloadLink" runat="server" CssClass="text" MaxLength="255"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionDownloadLinkTxt" ControlToValidate="tbDownloadLink"
                        Display="Dynamic" Text="* Invalid URL! ( www.website.com)" ValidationExpression="\S+\.\S+"
                        runat="Server" ErrorMessage="Invalid URL! ( www.website.com)" ToolTip="Invalid URL! ( www.website.com)" />
                    <asp:RequiredFieldValidator ID="RequiredDownloadLinkTxt" ControlToValidate="tbDownloadLink"
                        runat="server" ErrorMessage="Download Link is required." ToolTip="Download Link is required.">* Download Link is required.</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="vertical-align: top;">
                    <strong>Driver Owner:</strong></td>
                <td style="vertical-align: top;">
                    <asp:DropDownList ID="dlDriverOwner" runat="server" DataSourceID="sdsUsers"
                        DataTextField="UserName" DataValueField="UserId" AppendDataBoundItems="true">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvDriverOwner" ControlToValidate="dlDriverOwner"
                        runat="server" ErrorMessage="Driver owner is required." ToolTip="Driver owner is required.">* Driver owner is required.</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td colspan="2" style="vertical-align: top; text-align: center">
                    <asp:HiddenField ID="hfDriverID" runat="server" />
                    <br />
                    <br />
                    <asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2" style="height: 23px; vertical-align: top;">&nbsp;
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="vertical-align: top;">
                    <asp:Label ID="lblSuccess" runat="server" Font-Bold="True" ForeColor="Red" EnableViewState="false"></asp:Label>
                </td>
            </tr>
        </table>
        <div style="visibility: hidden;">
            <p>
                <strong>Driver Contact Information</strong><br />
                Driver Contact Information is treated as confidential, in accordance with the IVI
            Privacy Policy. The contact person will be the official contact for any communication
            from the IVI Foundation regarding this driver. In addition, the IVI Foundation will
            email this contact a link to download the IVI Conformant logo files.
            </p>
        </div>
        <asp:SqlDataSource ID="sdsInstrumentClass" runat="server" ConnectionString="<%$ ConnectionStrings:IVIFoundationConnectionString %>"
            SelectCommand="SELECT * FROM [InstrumentClass] ORDER BY [InstrumentClass]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sdsInstrumentManufacturer" runat="server" ConnectionString="<%$ ConnectionStrings:IVIFoundationConnectionString %>"
            SelectCommand="SELECT * FROM [InstrumentManufacturer] ORDER BY [Manufacturer]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sdsDriverType" runat="server" ConnectionString="<%$ ConnectionStrings:IVIFoundationConnectionString %>"
            SelectCommand="SELECT * FROM [DriverType] ORDER BY [DriverType]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sdsDriverGeneration" runat="server" ConnectionString="<%$ ConnectionStrings:IVIFoundationConnectionString %>"
            SelectCommand="SELECT * FROM [DriverGeneration] ORDER BY [DriverGeneration]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sdsDriverVendor" runat="server" ConnectionString="<%$ ConnectionStrings:IVIFoundationConnectionString %>"
            SelectCommand="SELECT * FROM [DriverVendor] ORDER BY [Vendor]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sdsUsers" runat="server" ConnectionString="<%$ ConnectionStrings:IVIFoundationConnectionString %>"
            SelectCommand="SELECT [UserId], [UserName] FROM [vw_aspnet_Users] ORDER BY [UserName]"></asp:SqlDataSource>
    </div>
</asp:Content>
