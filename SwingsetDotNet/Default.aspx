<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SwingsetDotNet._Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% 
    string title = "ESAPI SwingSet Demonstration Application beta";     
%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>ESAPI SwingSet Demonstration Application beta</title>
    <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body>
<div id="container">
	<div id="holder">
		<div id="logo">
		    <img src="style/images/owasp-logo_130x55.png" width="130" height="55" alt="owasp_logo" title="owasp_logo" />
	    </div>
	    <h1><%=title%></h1>
  
<div id="header"></div>
<hr> 

<form runat="server">

<h3>Swinget to PHP By Conviso IT Security - http://www.conviso.com.br</h3>

<h2>Input Validation, Encoding, and Injection</h2>

<ul>
	<li><asp:HyperLink ID="OutputUserInput" Text="Output User Input" NavigateUrl="~/main.aspx?function=OutputUserInput" runat="server" /></li>
	<li><asp:HyperLink ID="RichContent" Text="Accept Rich Content" NavigateUrl="~/main.aspx?function=RichContent" runat="server" /> </li>
    <li><asp:HyperLink ID="ValidateUserInput" Text="Validate User Input" NavigateUrl="~/main.aspx?function=ValidateUserInput" runat="server" /></li>
    <li><asp:HyperLink ID="Encoding" Text="Encode Output" NavigateUrl="~/main.aspx?function=Encoding" runat="server" /></li>
    <li><asp:HyperLink ID="Canonicalize" Text="Canonicalize Input" NavigateUrl="~/main.aspx?function=Canonicalize" runat="server" /></li>
</ul>

<h2>Cross Site Scripting</h2>
<ul>
    <li><asp:HyperLink ID="XSS" Text="Cross Site Scripting" NavigateUrl="~/main.aspx?function=XSS" runat="server" /></li>
</ul>


<h2>Authentication and Session Management</h2>
<ul>
<li><a href="http://localhost:4190/Login.aspx">Login</a></li>
<!--
<li><a href="main?function=Logout">Logout</a></li> (no implementation)
<li><a href="main.php?function=ChangePassword">Change Password</a></li>(implementation in Login)
-->
<li><asp:HyperLink ID="ChangeSessionIdentifier" Text="Change Session Identifier" NavigateUrl="~/main.aspx?function=ChangeSessionIdentifier" runat="server" /></li>

</ul>

<h2>Access Control and Referencing Objects</h2>
<ul>
    <li><asp:HyperLink ID="ObjectReference" Text="Reference a Server-Side Object" NavigateUrl="~/main.aspx?function=ObjectReference" runat="server" /></li>
    <li><asp:HyperLink ID="AccessControl" Text="Access Control" NavigateUrl="~/main.aspx?function=AccessControl" runat="server" /></li>
</ul>


<h2>Encryption, Randomness, and Integrity</h2>
<ul>
<li><asp:HyperLink ID="Encryption" Text="Encryption" NavigateUrl="~/main.aspx?function=Encryption" runat="server" /></li>
<li><asp:HyperLink ID="Randomizer" Text="Randomizer" NavigateUrl="~/main.aspx?function=Randomizer" runat="server" /></li>
<li><asp:HyperLink ID="Integrity" Text="Integrity" NavigateUrl="~/main.aspx?function=Integrity" runat="server" /></li>
<li><asp:HyperLink ID="GUID" Text="Globally Unique IDs" NavigateUrl="~/main.aspx?function=GUID" runat="server" /></li>
</ul>


<h2>Caching</h2>
<ul>
<li><asp:HyperLink ID="BrowserCaching" Text="Browser Caching" NavigateUrl="~/main.aspx?function=BrowserCaching" runat="server" /></li>
</ul>
</form>
<!--#include virtual="/footer.aspx"--> 
