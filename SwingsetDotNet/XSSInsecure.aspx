<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XSSInsecure.aspx.cs" Inherits="SwingsetDotNet.XSSInsegure" ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"--> 

 <h2 align="center">Exercise</h2>

<form ID="formXSS" action="XSSInsecure.aspx?function=XSS&mode=insecure" runat="server">

<hr><h4><a href="http://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet#RULE_.230_-_Never_Insert_Untrusted_Data_Except_in_Allowed_Locations">RULE #0 - Never Insert Untrusted Data Except in Allowed Locations</a></h2>
<hr>
<div>Only put untrusted data in the five approved locations! Not into a script:<ul>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input0.focus(); document.formXSS.input0.value='50;alert(\'xss0\')'">50; alert('xss0')</li></ul>
<table align="center" width="80%" border="1">
<tr><td><div>Don't put untrusted data in a script<br>&lt;html&gt;&lt;body&gt;data&lt;script&gt;var i=&nbsp;
<asp:TextBox ID="input0" MaxLength="20" BackColor="Yellow" runat="server" />&nbsp;;&lt;/script&gt;&lt;/body&gt;&lt;/html&gt;</div></td></tr>
<input type="hidden" id="lbInput0" runat="server" />
	<tr bgcolor="pink"><td>data
	<script>
	     var i = <%=lbInput0.Value %>
	</script>
</td></tr></table>
<hr><h4><a href=\"http://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet#RULE_.231_-_HTML_Escape_Before_Inserting_Untrusted_Data_into_HTML_Element_Content">RULE #1 - HTML Escape Before Inserting Untrusted Data into HTML Element Content</a></h2>
<hr>

<div>Normal Element Content, common attacks are: <ul>
<li>Inject down into script context by introducing a new element &lt;script&gt;</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input1.focus(); document.formXSS.input1.value='<script>alert(\'xss1\')</script>'">&lt;script&gt;alert('xss1')&lt;/script&gt;</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input1.focus(); document.formXSS.input1.value='<img src=javascript:alert(\'xss1\') />'">&lt;img src=javascript:alert('xss1') /&gt;</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input1.focus(); document.formXSS.input1.value='<img src=1 onerror=alert(\'xss1\') />'">&lt;img src=1 onerror=alert('xss1') /&gt;</li></ul></div>
<table align="center" width="80%" border="1">
<tr><td><div>Normal element<br>&lt;html&gt;&lt;body&gt;&lt;div&gt;&nbsp;
	<asp:TextBox ID="input1" MaxLength="20" BackColor="Yellow" runat="server" />
	&nbsp;
	&lt;/div&gt;&lt;/body&gt;&lt;/html&gt;</div></td></tr>
	<tr bgcolor="pink"><td><div>
    <asp:Label ID="lbInput1" runat="server" />
</div></td></tr></table>

<hr><h4><a href="http://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet#RULE_.232_-_Attribute_Escape_Before_Inserting_Untrusted_Data_into_HTML_Common_Attributes">RULE #2 - Attribute Escape Before Inserting Untrusted Data into HTML Common Attributes</a></h2>
<hr>
<div>Unquoted Attribute, common attacks are:<ul>
<li>Inject up to another attribute with ASCII 9, 10, 11, 12, 13, 32</li>
<li>Inject up to the containing HTML element with ></li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input21.focus(); document.formXSS.input21.value='dummy onmouseover=alert(\'xss2.1\')'">dummy onmouseover=alert('xss2.1')</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input21.focus(); document.formXSS.input21.value='dummy style=xss:expression(alert(\'xss2.1\'))'">dummy style=xss:expression(alert('xss2.1'))</li></ul></div>
<table align="center" width="80%" border="1">
<tr><td><div>&lt;div name=<asp:TextBox ID="input21" MaxLength="20" BackColor="Yellow" runat="server" />&gt;test&lt;/div&gt;</div></td></tr>
<tr bgcolor="pink"><td>
<div id="divInput21" runat="server">teste</div></td></tr></table>
<hr>
<div>Quoted Attribute, common attacks are: <ul>
<li>Inject up to another attribute with \" or ' depending on what quotes were used</li>
<li>Inject up to the containing HTML element with \"></li>
<li>Inject down only possible with special attributes like href, src, style, onXXX - see other rules</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input22.focus(); document.formXSS.input22.value='dummy\x22 onmouseover=\x22alert(\'xss2.2\')'">dummy" onmouseover="alert('xss2.2')"</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input22.focus(); document.formXSS.input22.value='dummy \x22 style=\x22xss:expression(alert(\'xss2.2\'))'">dummy" style="xss:expression(alert('xss2.2'))"</li></ul></div>
<table align="center" width="80%" border="1">
<tr><td><div>&lt;div name="&nbsp;<asp:TextBox ID="input22" MaxLength="20" BackColor="Yellow" runat="server" />/&gt;test&lt;/div&gt;</div></td></tr>
<tr bgcolor="pink"><td> <div id="divInput22" runat="server">test</div></td></tr></table>
<hr><h4><a href="http://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet#RULE_.233_-_JavaScript_Escape_Before_Inserting_Untrusted_Data_into_HTML_JavaScript_Data_Values">RULE #3 - JavaScript Escape Before Inserting Untrusted Data into HTML JavaScript Data Values</a></h2>

<hr>
<div>Unquoted Value, common attacks are:<ul>
<li>Inject up to another attribute with ; | and many others 50; alert('xss3.1')</li>
<li>Inject down with a JavaScript expression 50 + alert('xss3.1')</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input31.focus(); document.formXSS.input31.value='50 + alert(\'xss3.1\')'">50 + alert('xss3.1')</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input31.focus(); document.formXSS.input31.value='50; alert(\'xss3.1\')'">50; alert('xss3.1')</li></ul></div>
<table align="center" width="80%" border="1">
<tr><td><div>&lt;div onmouseover="var i=&nbsp;<asp:TextBox ID="input31" MaxLength="20" BackColor="Yellow" runat="server" />test&lt;/div&gt;</div></td></tr>
    <tr bgcolor="pink"><td><div id="divInput31" runat="server">test</div></td></tr></table>
<hr>
<div>Quoted Value, common attacks are: <ul>
<li>Inject up to the JavaScript context with \" or ' depending on what quotes were used</li>
<li>Inject up to the containing HTML element with \"></li>
<li>Note that JavaScript escaping can be \\A (ascii) or \\xHH (hex) or \\OOO (octal)</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input32.focus(); document.formXSS.input32.value='dummy\';alert(\'xss3.2\'); var j=\''">dummy'; alert('xss3.2'); var j="</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input32.focus(); document.formXSS.input32.value='dummy\x27\x22>&lt;script>alert(\x22xss3.2\x22)&lt;/script>'\">dummy">&lt;script>alert("xss3.2")&lt;/script>"</li></ul></div>
<table align="center" width="80%" border="1">
<tr><td><div>&lt;div onmouseover="var i='&nbsp;<asp:TextBox ID="input32" MaxLength="20" BackColor="Yellow" runat="server" />test&lt;/div&gt;</div></td></tr>
<tr bgcolor="pink"><td><div id="divInput32" runat="server">test</div></td></tr></table>
<hr><h4><a href="http://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet#RULE_.234_-_CSS_Escape_Before_Inserting_Untrusted_Data_into_HTML_Style_Property_Values">RULE #4 - CSS Escape Before Inserting Untrusted Data into HTML Style Property Values</a></h2>

<hr>
<div>Unquoted Style Attribute, common attacks are:<ul>
<li>Inject up to another attribute with ASCII 9, 10, 11, 12, 13, 32</li>
<li>Inject up to the containing HTML element with ></li>
<li>Inject down with xss:expression(alert('xss')) or xss:url(javascript:alert('xss'))</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input41.focus(); document.formXSS.input41.value='>&lt;script>alert(\'xss4.1\')&lt;/script>'">dummy&gt;&lt;script&gt;alert('xss4.1')&lt;/script&gt;</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input41.focus(); document.formXSS.input41.value='dummy onmouseover=alert(\'xss4.1\')'">dummy onmouseover=alert('xss4.1')</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input41.focus(); document.formXSS.input41.value='xss:expression(alert(\'xss4.1\'))'">xss:expression(alert('xss4.1'))</li></ul></div>
<table align="center" width="80%" border="1">
<tr><td><div>&lt;div style=&nbsp;<asp:TextBox ID="input41" MaxLength="20" BackColor="Yellow" runat="server" />&nbsp;>test&lt;/div&gt;</div></td></tr>
<tr bgcolor="pink"><td><div id="divInput41" runat="server">test</div></td></tr></table>

<hr>
<div>Quoted Style Attribute, common attacks are: <ul>
<li>Inject up to another attribute with \" or ' depending on what quotes were used</li>
<li>Inject up to the containing HTML element with \"></li>
<li>Inject down with xss:expression(alert('xss')) or xss:url(javascript:alert('xss'))</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input42.focus(); document.formXSS.input42.value='dummy\x22 onmouseover=\x22alert(\'xss4.2\')'">dummy\" onmouseover=\"alert('xss4.2')\"</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input42.focus(); document.formXSS.input42.value='xss:expression(alert(\'xss4.2\'))'">xss:expression(alert('xss4.2'))</li></ul></div>
<table align="center" width="80%" border="1">
<tr><td><div>&lt;div name="&nbsp;<asp:TextBox ID="input42" MaxLength="20" BackColor="Yellow" runat="server" />&nbsp;">test&lt;/div&gt;</div></td></tr>
<tr bgcolor="pink"><td><div id="divInput42" runat="server">test</div></td></tr></table>

<hr><h4><a href="http://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet#RULE_.235_-_URL_Escape_Before_Inserting_Untrusted_Data_into_HTML_URL_Attributes">RULE #5 - URL Escape Before Inserting Untrusted Data into HTML URL Attributes</a></h2>

<hr>
<div>Unquoted URL Attribute, common attacks are:<ul>
<li>Inject up to another attribute with ASCII 9, 10, 11, 12, 13, 32</li>
<li>Inject up to the containing HTML element with ></li>
<li>Inject down with javascript: type URLs</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input51.focus(); document.formXSS.input51.value='>&lt;script>alert(\'xss5.1\')&lt;/script>'">dummy&gt;&lt;script&gt;alert('xss5.1')&lt;/script&gt;</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input51.focus(); document.formXSS.input51.value='dummy onmouseover=alert(\'xss5.1\')'">dummy onmouseover=alert('xss5.1')</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input51.focus(); document.formXSS.input51.value='javascript:alert(\'xss5.1\')'">javascript:alert('xss5.1')</li></ul></div>
<table align="center" width="80%" border="1">
<tr><td><div>&lt;a href=&nbsp;<asp:TextBox ID="input51" MaxLength="20" BackColor="Yellow" runat="server" />&nbsp;>test&lt;/a&gt;</div></td></tr>
<tr bgcolor="pink"><td><a id="hiperInput51" runat="server">test</a></td></tr></table>

<hr>

<div>Quoted URL attribute, common attacks are: <ul>
<li>Inject up to another attribute with " or ' depending on what quotes were used</li>
<li>Inject up to the containing HTML element with "></li>
<li>Inject down with javascript: type URLs</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input52.focus(); document.formXSS.input52.value='dummy\x22 onmouseover=\x22alert(\'xss5.2\')'">dummy" onmouseover="alert('xss5.2')"</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input52.focus(); document.formXSS.input52.value='xss:expression(alert(\'xss5.2\'))'">xss:expression(alert('xss5.2'))</li>
<li style="cursor:pointer;text-decoration:underline" onclick="document.formXSS.input52.focus(); document.formXSS.input51.value='javascript:alert(\'xss5.1\')'">javascript:alert('xss5.1')</li></ul></div>
<table align="center" width="80%" border="1">
<tr><td><div>&lt;a href="&nbsp;<asp:TextBox ID="input52" MaxLength="20" BackColor="Yellow" runat="server" />&nbsp;">test&lt;/a&gt;</div></td></tr>
<tr bgcolor="pink"><td><a id="hiperInput52" runat="server">test</a></td></tr></table>
<br /><br />
<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
</div>
</form>    
<asp:Label ID="lbuserMessage" runat="server" />
<asp:Label ID="lblogMessage" runat="server" />
<!--#include virtual="/footer.aspx"-->
