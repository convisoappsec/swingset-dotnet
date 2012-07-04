<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CanonicalizeSecure.aspx.cs" Inherits="SwingsetDotNet.CanonicalizeSecure" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"-->

<h2 align="center">Exercise</h2>
<h4>Enter encoded data</h4>

<form ID="frmCanonicalizeIn" runat="server">
	<table>
	<tr><td>Original</td><td>Decoded</td></tr>
	<tr><td>
	    <asp:textbox id="txtInput" textmode="MultiLine" width="300px" height="150px" runat="server" />
	</td><td>
	    <asp:textbox id="txtCanonical" textmode="MultiLine" width="300px" height="150px" runat="server" />
	</td></tr></table>
	<asp:Button ID="btnSubmit" text="Submit" PostBackUrl="XanonicalizeSecure.aspx?function=Canonicalize&mode=secure" onclick="btnSubmit_Click" runat="server" />
</form>
<p>User Message: <font color="red"><asp:Label ID="lblUser" runat="server" /></font></p>
<p>Log Message: <font color="red"><asp:Label ID="lblLog" runat="server" /></font></p><hr>
<p>
<h2 align="center">Quick Reference</h2>
<table border=0 width="100%">
<tr align="center">
<td bgcolor="yellow">int</td><td>hex</td><td>char</td><td bgcolor="black">&nbsp;</td>
<td bgcolor="yellow">int</td><td>hex</td><td>char</td><td bgcolor="black">&nbsp;</td>
<td bgcolor="yellow">int</td><td>hex</td><td>char</td><td bgcolor="black">&nbsp;</td>
<td bgcolor="yellow">int</td><td>hex</td><td>char</td>
</tr>
<%
for( int i=1; i<65; i++ ) {
	int value = i;
	string toHex = String.Format("{0:X}", value);
    string charValue = Char.ConvertFromUtf32(value);
    

%>
<tr align="center">
<td bgcolor="yellow"><%=value%></td>
<td><%=toHex%></td>
<td><%=charValue %></td>
<td bgcolor="black">&nbsp;</td>

<%
	value= value + 64;
	toHex = String.Format("{0:X}", value);
	charValue = Char.ConvertFromUtf32(value);
%>
<td bgcolor="yellow"><%=value%></td>
<td><%=toHex%></td>
<td><%=charValue %></td>
<td bgcolor="black">&nbsp;</td>
<%
	value= value + 64;
	toHex = String.Format("{0:X}", value);
	charValue = Char.ConvertFromUtf32(value);
%>
<td bgcolor="yellow"><%=value%></td>
<td><%=toHex%></td>
<td><%=charValue %></td>
<td bgcolor="black">&nbsp;</td>
<%
	value= value + 64;
	toHex = String.Format("{0:X}", value);
	charValue = Char.ConvertFromUtf32(value);
%>
<td bgcolor="yellow"><%=value%></td>
<td><%=toHex%></td>
<td><%=charValue %></td>
</tr>
<%
}
%>

</table>    
<!--#include virtual="/footer.aspx"-->