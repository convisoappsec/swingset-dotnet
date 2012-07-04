<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowserCachingInsecure.aspx.cs" Inherits="SwingsetDotNet.BrowserCachingInsecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
    Response.CacheControl = "Public";
   Response.ExpiresAbsolute = DateTime.Now.AddMilliseconds(5000);
%>

<!--#include virtual="/header.aspx"-->
<h2>Exercise: Experiment with Browser Caching</h2>

<p>Page is set to cache for 5 seconds, so pressing refresh button should 
show the same value until the cache timeout.</p>

<p>Social Security Number: 123-12-1234</p>
<p>Credit Card Number: 1234-1234-1234-1234</p>
<table border="1">
<tr><th>Account Number</th><th>Balance</th></tr>
<tr><td>95812344</td><td>$<asp:Label ID="rando11" runat="server" />.<asp:Label ID="rando12" runat="server" /></td></tr>
<tr><td>21231235</td><td>$<asp:Label ID="rando21" runat="server" />.<asp:Label ID="rando22" runat="server" /></td></tr>
<tr><td>10823580</td><td>$<asp:Label ID="rando31" runat="server" />.<asp:Label ID="rando32" runat="server" /></td></tr>
</table>
<form id="form1" runat="server">    
    <asp:Button id="btnSubmit" runat="server" text="Refresh" postbackurl="~/main.aspx?function=BrowserCaching&mode=insecure" />
</form>
<!--#include virtual="/footer.aspx"-->

