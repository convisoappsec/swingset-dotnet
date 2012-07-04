<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjectReferenceInsecure.aspx.cs" Inherits="SwingsetDotNet.ObjectReferenceInsecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"-->
<h2>Exercise: Insecure Object Reference</h2>
<table width="30%" border="1">
<tr><th width="50%">List of Users</th></tr>
<tr><td><asp:HyperLink ID="do0" runat="server" /> </td></tr>
<tr><td><asp:HyperLink ID="do1" runat="server" /> </td></tr>
<tr><td><asp:HyperLink ID="do2" runat="server" /> </td></tr>
<tr><td><asp:HyperLink ID="do3" runat="server" /> </td></tr>
<tr><td><asp:HyperLink ID="do4" runat="server" /> </td></tr>
<tr><td><asp:HyperLink ID="do5" runat="server" /> </td></tr>
<tr><td><asp:HyperLink ID="do6" runat="server" /> </td></tr>
<tr><td><asp:HyperLink ID="do7" runat="server" /> </td></tr>    
<tr><td><asp:HyperLink ID="do8" runat="server" /> </td></tr>
<tr><td><asp:HyperLink ID="do9" runat="server" /> </td></tr>
<tr><td><asp:HyperLink ID="do10" runat="server" /> </td></tr>      
</table>
<br />    
<div runat="server" id="dvFound">
    User's message:  <br />
    <p style="color:Red">
</div>
<asp:Label ID="lblQuote" runat="server" />
</p><br />
<!--#include virtual="/footer.aspx"-->