<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjectReferenceSecure.aspx.cs" Inherits="SwingsetDotNet.ObjectReferenceSecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"-->
<h2>Access Reference Maps</h2>
<table width="100%" border="1">
<tr><th width="50%">Links with indirect references</th><th>The direct reference</th></tr>
<tr><td><asp:HyperLink ID="hind0" runat="server" /></td><td><asp:Label ID="ldir0" runat="server" /></td></tr>
<tr><td><asp:HyperLink ID="hind1" runat="server" /></td><td><asp:Label ID="ldir1" runat="server" /></td></tr>
<tr><td><asp:HyperLink ID="hind2" runat="server" /></td><td><asp:Label ID="ldir2" runat="server" /></td></tr>
<tr><td><asp:HyperLink ID="hind3" runat="server" /></td><td><asp:Label ID="ldir3" runat="server" /></td></tr>
<tr><td><asp:HyperLink ID="hind4" runat="server" /></td><td><asp:Label ID="ldir4" runat="server" /></td></tr>
<tr><td><asp:HyperLink ID="hind5" runat="server" /></td><td><asp:Label ID="ldir5" runat="server" /></td></tr>
<tr><td><asp:HyperLink ID="hind6" runat="server" /></td><td><asp:Label ID="ldir6" runat="server" /></td></tr>
</table>

Message: <asp:Label ID="lblOutput" runat="server" />
<br /><br />
Click <asp:HyperLink ID="lkHere" runat="server" /> to get new object mapping.
<!--#include virtual="/footer.aspx"-->