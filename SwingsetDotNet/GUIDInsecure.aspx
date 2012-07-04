<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUIDInsecure.aspx.cs" Inherits="SwingsetDotNet.GUIDInsecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"-->

<form id="form1" runat="server">
<h2 align="center">Exercise</h2>
<p>Generate GUID using <b>System.Guid.NewGuid()</b></p>
<table align="center" border="1" width="80%">
<tr><th>GUID</th><tr>
<tr><td align="center">
<asp:Label ID="GUID1" runat="server" /> - <asp:Label ID="GUID2" runat="server" /> - <asp:Label ID="GUID3" runat="server" /> - <asp:Label ID="GUID4" runat="server" />-<br />
<asp:Label ID="GUID5" runat="server" />
</td></tr>
<tr><td align="center">
    <asp:Button ID="btnSubmit1" runat="server" Text="New GUID" onclick="btnSubmit_Click" postbackurl="main.aspx?function=GUID&mode=insecure"/> 
</td></tr>
</table>
</form>    
<!--#include virtual="/footer.aspx"-->
