<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessControlSecure.aspx.cs" Inherits="SwingsetDotNet.AccessControlSecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<h2 align="center">Exercise</h2>

<h4>Background:</h4>
<p>Click on one of the url below, The requested jsp will display corresponding text depending upon the boolean value returned by the ESAPI's isAuthorizedForURL() method.</p>
<p>The requested jsp will also display respective log messages and the boolean value returned by the ESAPI's isAuthorizedForURL() method.</p>

<p>The url access rules for the two test URLs below are as follows:<br/><br />
/ESAPI/test.php     | any      | allow  |<br />
/ESAPI/test1.php    | admin    | allow  |</p>

<h4>Test URL 1</h4>
<p>The access privilege for this url is assigned as "any" which means any user can access this url.</p>
<p>Click on the test url below. The requested jsp would say Congratulations you have the access to this page!</p>
<asp:HyperLink ID="test" NavigateUrl="~/test.aspx" Text="http://localhost:3313/test.aspx" runat="server" />
<br /><br />
<p>Try changing the URLAccessRules.txt file and change the rule of /ESAPI_Swingset/test.jsp from<br /> | any      | allow  | to | any      | deny  |.</p>
<p>Restart Tomcat and hit the Test URL 1 again. This time the requested jsp would say "Sorry you do not have the access to this page!"</p>

<h4>Test URL 2</h4>
<p>The access privilege for this url is assigned only to the admin.</p>
<p>Click on the test url below. The requested jsp would say "Sorry you do not have the access to this page!"</p>
<asp:HyperLink ID="test1" NavigateUrl="~/test1.aspx" Text="http://localhost:3313/test1.aspx" runat="server" />
<br /><br />
<p>Similarly, you can try to change the access rule for this url.</p>    
    </div>
    </form>
</body>
</html>
