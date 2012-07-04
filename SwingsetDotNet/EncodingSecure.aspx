<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EncodingSecure.aspx.cs" Inherits="SwingsetDotNet.EncodingSecure" ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Import Namespace="Owasp.Esapi.Interfaces" %>
<%@ Import Namespace="Owasp.Esapi" %>
<%@ Import Namespace="Owasp.Esapi.Codecs" %>

<!--#include virtual="/header.aspx"-->
<hr><br><h2>Exercise: Enter input destined for an interpreter</h2>
<form id="form1" runat="server">
	Enter whatever input you want</br>
	<asp:TextBox TextMode="MultiLine" Width="400px" Height="150px" ID="txtInput" runat="server" /></ br>
	<asp:Button ID="btnSubmit" text="Submit" PostBackUrl="EncodingSecure.aspx?function=Encoding&mode=secure" onclick="btnSubmit_Click" runat="server" />
</form>    
<table border="1">
<tr><th>Input</th><th>Encoded output</th></tr>
<tr><td>Unencoded</td><td><p><pre><asp:Label ID="lblUnencoded" runat="server" /></pre></td></tr>
<tr><td>HTML Body (encodeForHTML)</td><td><p><pre><asp:Label ID="Label1" runat="server" /></pre></p></td></tr>
<tr><td>HTML Attribute (encodeForHTMLAttribute)</td><td><p><pre><asp:Label ID="Label2" runat="server" /></pre></p></td></tr>
<tr><td>Javascript (encodeForJavascript)</td><td><p><pre><asp:Label ID="Label3" runat="server" /></pre></p></td></tr>
<tr><td>VBScript (encodeForVBScript)</td><td><p><pre><asp:Label ID="Label4" runat="server" /></pre></p></td></tr>
<tr><td>URL (encodeForURL)</td><td><p><pre><asp:Label ID="Label5" runat="server" /></pre></p></td></tr>
<tr><td>Base 64 (encodeForBase64)</td><td><p><pre><asp:Label ID="Label6" runat="server" /></pre></p></td></tr>
<tr><td>XML (encodeForXML)</td><td><p><pre><asp:Label ID="Label7" runat="server" /></pre></p></td></tr>
<tr><td>XML Attribute (encodeForXMLAttribute)</td><td><p><pre><asp:Label ID="Label8" runat="server" /></pre></p></td></tr>
</table>

<h2>Quick Reference</h2>

<p>Important: The characters below are what is produced by the ESAPI codecs. These
represent the most standard ways of encoding for the listed interpreters. However,
there are many other <i>legal</i> encoding formats. For example, the ESAPI default
is to use decimal HTML entities if there is not a named entity, but hexidecimal entities
(e.g. &amp;#x26;) are completely legal. ESAPI follows the principle of being liberal
in what it accepts (for canonicalization) and strict in what it emits.
</p>

<table width="100%">
<tr align="center" bgcolor="yellow">
<th width="10%">int</th>
<th width="10%">char</th>
<th width="10%">html body</th>
<th width="10%">html attr</th>
<th width="10%">javascript</th>
<th width="10%">vbscript</th>
<th width="10%">url</th>
<th width="10%">xml</th>
<th width="10%">xml attr</th>
</tr>
<%
for ( int i = 0; i < 127; i++ ) {
	string c = ""+Char.ConvertFromUtf32(i);
    IEncoder encoder = Esapi.Encoder;
%>
<tr bgcolor="#e0e0e0" align="center">
	<td bgcolor="yellow"><%=i %></td>
	<td bgcolor="yellow"><%=c %></td>
	<td><%=encoder.Encode(BuiltinCodecs.Html, c) %></td>
	<td><%=encoder.Encode(BuiltinCodecs.HtmlAttribute, c) %></td>
	<td><%=encoder.Encode(BuiltinCodecs.JavaScript, c) %></td>
	<td><%=encoder.Encode(BuiltinCodecs.VbScript, c) %></td>
	<td><%=encoder.Encode(BuiltinCodecs.Url, c) %></td>
	<td><%=encoder.Encode(BuiltinCodecs.Xml, c) %></td>
	<td><%=encoder.Encode(BuiltinCodecs.XmlAttribute, c) %></td>
</tr>

<% }%>
</table>
<!--#include virtual="/footer.aspx"-->

