<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RichContentInsecure.aspx.cs" Inherits="SwingsetDotNet.RichContentInsecure" ValidateRequest="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--#include virtual="/header.aspx"-->

<h2>Background</h2>
One method many people use to safeguard their application from a XSS attack is to filter out the &lt;script&gt; tag.  While this may seem like it would prevent an attack involving javascript, it does contain some flaws.
One way to bypass this filtering is to input <b> &lt;scr&lt;script&gt;ipt&gt; </b>.  When &lt;script&gt; is removed, the two halves of the other &lt;script&gt; tag will come together, forming an attack.  Try this below and see what happens.<br /><br />


<hr><br><h2>Exercise: Enter Rich HTML Markup</h2>
 
<form action="RichContentInsecure.aspx?function=RichContent&mode=insecure" ID="form3" runat="server">
	<table width="100%" border="1">
	    <tr>
	        <th width="50%">Enter whatever markup you want</th>
	        <th>Safe HTML rendered</th>
	    </tr>
	    <tr>
	        <td>
	            <asp:TextBox ID="txtInput" runat="server" TextMode="MultiLine" Width="400px" Height="150px" />
	            <asp:Button ID="btnSubmit" runat="server" Text="Render" OnClick="btnSubmit_Click" /> </br>
	        </td>
	        <td><asp:Label ID="lbMarkup" runat="server" /></td>
	   </tr>
   </table>
</form>

<!--#include virtual="/footer.aspx"-->