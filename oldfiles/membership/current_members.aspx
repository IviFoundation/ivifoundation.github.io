<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"
    CodeFile="~/membership/current_members.aspx.cs" Inherits="membership_current_members"
    Title="IVI Current Membership" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<%@ Register Src="../_controls/MembershipMenu.ascx" TagName="MembershipMenu" TagPrefix="uc1" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="leftCol">
        <uc1:MembershipMenu ID="MembershipMenu1" runat="server" />
    </div>
    <div id="rightCol">
        <h1>Current Members</h1>
        <p style="margin-left: 25px;">
          <a href="#sponsor">. Sponsor Members</a><br />
          <a href="#general">. General Members</a><br />
          <a href="#associate">. Associate Members</a>
        </p>
      <table border="0" cellpadding="4" cellspacing="3">
        <tr>
          <td colspan="3">
            <a id="sponsor"></a><strong style="font-size: larger;">Sponsor Members</strong>
          </td>
        </tr>
        <tr>
          <td width="314" valign="top">
            <strong>Keysight Technologies</strong><br />
            1400 Fountaingrove Pkwy<br />
            Santa Rosa, CA 95403<br />
            Web Page: <a href="http://www.keysight.com/" target="_blank">www.keysight.com</a><br />
            Business Contact: Larry Ostheimer
          </td>
          <td width="317" valign="top">
            <strong>National Instruments </strong><br />
            11500 N. Mopac Expwy., Building C<br />
            Austin, TX 78759-3504<br />
            Web Page: <a href="http://www.ni.com" target="_blank">www.ni.com</a><br />
            Business/Technical Contact: David Rohacek<br />
            Phone: 512-683-5540<br />            
          </td>
          <td width="282" valign="top">
            <strong>Rohde &amp; Schwarz </strong><br />
            Muehldorfstr. 15<br />
            81671 Munich, Germany<br />
            Web Page: <a href="http://www.rohde-schwarz.com" target="_blank">www.rohde-schwarz.com</a><br />
            Business/Technical Contact: <a href="mailto: christian.hoelzl@rohde-schwarz.com"><br />
            Dr. Christian Hoelzl </a><br />
            Phone: +49 89 4129 11555<br />
            Fax: +49 89 4129 61555
          </td>
        </tr>
        <tr>
          <td colspan="3">
            <br />
            <br />                
          </td>
        </tr>
        <tr>
          <td colspan="3">
            <a id="general"></a><strong style="font-size: larger;">General Members</strong>
          </td>
        </tr>
        <tr>
          <td valign="top"><strong>Astronics Test Systems</strong><br />
            4 Goodyear St. <br />
            Irvine, CA 92618<br />
            Web Page: <a href="http://www.astronicstestsystems.com">www.astronicstestsystems.com</a><br />
            Business/Technical Contact: <br />
            Dan Masters<br />
            Phone: 1-949-460-6760<br />
          </td>
          <td valign="top"><strong>Bustec Ltd.</strong><br />
            Bustec House<br />
            Shannon Business Park<br />
            Shannon, Co. Clare  IRELAND<br />
            Web Page: <a href="http://www.bustec.com" target="_blank">www.bustec.com</a><br />
            Business Contact: Dr. Fred Bloennigen<br />
            Phone: +353 61 707 100<br />
            Fax: +353 61 707 106<br />
            Technical Contact: Torsten Rissel<br />
            Phone: +353 61 707 102<br />
            Fax: +353 61 707 106<br />
            <br/>
          </td>        
          <td valign="top"><strong>MathWorks <br />
            </strong>3 Apple Hill Drive <br />
            Natick, MA 01760 <br />
            Web Page: <a href="http://www.mathworks.com" target="_blank">www.mathworks.com</a> <br />
            Business/Technical Contact: Sean Sullivan <br />
            Phone: 508-647-7959<br />
            Fax: 508-647-7001 <br />            
            <br />
          </td>
        </tr>
        <tr>
          <td valign="top"><strong>Pacific MindWorks, Inc. <br />
            </strong>16870 West Bernardo Drive Suite 380 <br />
            San Diego, CA 92127<br />
            Web Page: <a href="http://www.pacificmindworks.com" target="_blank">www.pacificmindworks.com</a><br />
            Contact: Kirk Fertitta<br />
            Phone: 858-587-8876 X237 
          </td>
          <td valign="top"><strong>Tektronix/Keithley Instruments</strong> <br />
            14180 SW Karl Braun Drive <br />
            P.O. Box 500 <br />
            MS 39-732 <br />
            Beaverton, OR 97077 <br />
            Web Page: <a href="http://www.tek.com" target="_blank">www.tek.com</a><br />
            Business Contact: Anshul Arora<br />
            Technical Contact: Santanu Pradhan<br />
            Phone: 91-80-3079-2453 
          </td>             
          <td valign="top"><strong>Teradyne <br />
            </strong>700 Riverpark Drive, MS-NR7001-2 <br />
            North Reading, MA 01864 <br />
            Web Page: <a href="http://www.teradyne.com" target="_blank">www.teradyne.com</a><br />
            Business/Technical Contact: Teresa Lopes <br />
            Phone: 978-370-1377 <br />
            Fax: 978-370-1100<br />            
          </td>
          <td valign="top">&nbsp;
          </td>
        </tr>
        <tr>
          <td valign="top"><p><br />
            </p>              
          </td>
          <td valign="top">&nbsp;</td>
          <td valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="3">
            <a id="associate"></a><strong style="font-size: larger;">Associate Members</strong>
          </td>
        </tr>
        <tr>          
          <td valign="top" style="height: 98px"><strong>Aim-TTi Ltd.<br />
            </strong><span lang="en-us" xml:lang="en-us">Glebe Road</span><br />
            <span lang="en-us" xml:lang="en-us">Huntingdon, Cambridgeshire PE29 7DR<br />
            United Kingdom</span><br />
            Web Page: <a href="http://www.aimtti.com" target="_blank">www.aimtti.com</a><br />
            Contact: <span lang="en-us" xml:lang="en-us"></span>Ian Harman<br />
            Phone: <span lang="en-us" xml:lang="en-us">0044 1480 412451</span></td>
          <td valign="top" style="height: 98px"><strong>AMETEK Programmable Power/VTI Instruments</strong><br />
            2031 Main St<br />
            Irvine, CA 92614<br />
            Web Page: <a href="http://www.vtiinstruments.com/">http://www.vtiinstruments.com/</a> <br />
            Business Contact: Chris Gibson</td>          
          <td valign="top"><span style="height: 98px"><strong>Chyng Hong Electronic Co., Ltd</strong><br />
            No.80, Lane 258, Sec. 3, Hansi W. Rd.,<br />
            Beitun District 40647, Taichung City Taiwan<br />
            Web Page: <a href="http://www.idrc.com.tw" target="_blank">http://www.idrc.com.tw</a><br />
            Business Contact: Lily Chen<br />
            Phone: +886-4-243 76268 #214<br />
            Fax:  +886-4243 76266<br />
            Technical Contact: Simon Liu<br />
            Phone:  +886-4-24376268 #214<br />
            Fax:  +886-4243 76266<br /><br /></span>
          </td>
        </tr>
        <tr>
          <td valign="top"><span style="height: 98px"><strong>ELCOM, a.s.Technologicka 374/6</strong><br />
            70800 Ostrava-Pustkovec <br />
            Czech Republic<br />
            Web Page: <a href="http://www.elcom.cz">http://www.elcom.cz</a><br />
            Business/Technical Contact: Jiri Kominek<br />
            Phone: +420558279911<br />
            Fax: +420555301279 </span>
          </td>         
          <td valign="top"><strong>Kikusui Electronics, Corp.</strong><br />
            1-1-3 Higashiyamata <br />
            Tsuzuki-ku, Yokohama-city<br />
            Kanagawa-pref, 224-0023<br />
            JAPAN<br />
            <span lang="en-us" xml:lang="en-us"></span>Web Page:<a href="http://www.kikusui.co.jp">www.kikusui.co.jp</a><br />
            Business Contact: Hiroyuki  Nakazawa<br />
            Technical Contact: Makoto  Kondo<br />
            Phone: 81  45-593-7502<br />
            Fax:  81  45-593-0207<br /><br />
          </td>
          <td valign="top"><strong><span style="height: 98px"><strong>NF Corporation</strong><br />
            </span></strong><span style="height: 98px">6-3-20 Tsunashima Higashi Kohoku-ku<br />
            Yokohama 223-8508<br />
            JAPAN<br />
            Web Page: <a href="https://www.nfcorp.co.jp/">www.nfcorp.co.jp</a><br />
            Business Contact: Hirohito Iwaya<br />
            Phone: 81-45-545-8152<br />
            Technical Contact: Kazuyuki Murakami<br />
          </td>
        </tr>
        <tr>
          <td valign="top"><strong><span style="height: 98px"><strong>Pacific Power Source, Inc.</strong><br />
            </span></strong><span style="height: 98px">
            17692 Fitch Irvine<br />
            CA  92614<br />
            Web Page: <a href="https://pacificpower.com/">pacificpower.com</a><br />
            Business/Technical Contact: Eric Lord<br />
            Phone: 949-251-1800<br />             
          </td>                          
          <td valign="top"><strong><span style="height: 98px"><strong>Pickering Interfaces Ltd</strong><br />
            </span></strong><span style="height: 98px">
            Stephenson Road <br />
            Clacton-on-sea Essex CO15 4NL<br /> 
            England<br />
            Web Page: <a href="http://www.spectrum-instrumentation.com/">www.spectrum-instrumentation.com</a><br />
            Business/Technical Contact: Alan P. Hum<br />
            Phone:  +44 1255 687910<br />             
          </td>
          <td valign="top"><strong><span style="height: 98px"><strong>Spectrum Instrumentation GmbH</strong><br />
            </span></strong><span style="height: 98px">
            Ahrensfelder Weg 13-17 <br />
            22927 Grosshansdorf<br />
            GERMANY<br />
            Web Page: <a href="http://www.spectrum-instrumentation.com/">www.spectrum-instrumentation.com</a><br />
            Business Contact: Gisela Hassler<br />
            Phone: +49 4102 6956 0<br />
            Fax:  +49 4102 6956 66<br />
            Technical Contact: Oliver Rovini<br />
            Phone:  +49 4102 6956 0<br />
            Fax:  +49 4102 6956 66</span><br /><br />
          </td>
        </tr>
        <tr>
          <td valign="top"><strong>Technical Software Engineering Plazotta GmbH</strong><br />
            Hopfenstr. 30, 85283 Wolnzach<br />
            Germany<br />
            Web Page: <a href="http://www.tsep.com/">http://www.tsep.com</a><br />
            Technical Contact:<br />
            David Courtney<br />
            Phone: +49 8442 96240 55
          </td>            
        </tr>
        <tr>
        </tr>
        <tr>
          <td valign="top">&nbsp;</td>
          <td valign="top">&nbsp;</td>
          <td valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td valign="top">&nbsp;</td>
          <td valign="top">&nbsp;</td>
          <td valign="top">&nbsp;</td>
        </tr>
      </table>
      <p>&nbsp;</p>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeaderContent">
</asp:Content>
