<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"
	Title="Shared Components" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
	<div id="leftCol">
	</div>
	<div id="rightCol">
		<h1>
			.NET Shared Components Warning</h1>
		<p>
			<span lang="en-us">A warning is generated when building a .NET project that includes
				a reference to &quot;provisional&quot; IVI.NET shared assemblies.</span></p>
		<p>
			<span lang="en-us">The IVI.NET assemblies included in the IVI.NET Shared Components
				are large and complex.&nbsp; They have all required extensive development effort
				and review.&nbsp; They have been &quot;provisionally&quot; released to IVI Foundation
				members for prototyping and development.&nbsp; As IVI Foundation members verify
				each assembly by prototyping or developing and releasing a driver that uses the
				assembly, that assembly will be removed from &quot;provisional&quot; status to &quot;production-ready&quot;
				status.</span></p>
		<p>
			<span lang="en-us">If you see this warning, the referenced assembly is still in provisional
				status.&nbsp; This means that</span></p>
		<ul>
			<li>The <span lang="en-us">assembly has been provisionally released for prototyping
				only.&nbsp; No released drivers should reference this assembly.</span></li>
			<li><span lang="en-us">The assembly will remain in provisional status until an IVI Foundation
				member has developed a driver that references the assembly, and has confirmed the
				quality of the assembly.</span></li>
			<li><span lang="en-us">If it is determined, based on the work of an IVI Foundation member
				or other input, that changes to the assembly are needed, these changes may be breaking
				changes.&nbsp; <span style="background-color: #FFFF00">Drivers (or other software) that
					reference provisional assemblies </span><strong><em><span style="background-color: #FFFF00">
						SHOULD NOT</span></em></strong><span style="background-color: #FFFF00"> be released,
							as future changes could break the driver!</span></span></li>
			<li><span lang="en-us">IVI Foundation members who would like to release a driver that
				references a provisional assembly must contact the IVI.NET working group to work
				through the process of removing the assembly from provisional status.&nbsp; Non-members
				should refer to the <a href="http://www.ivifoundation.org/shared_components/Default.aspx">
					Shared Components</a> page for the IVI.NET Shared Components status.</span></li>
		</ul>
	</div>
</asp:Content>
