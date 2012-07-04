<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RichContentSecure.aspx.cs" Inherits="SwingsetDotNet.RichContentSecure" ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--#include virtual="/header.aspx"-->
<h2>Exercise: Enter Rich HTML Markup</h2>
<form action="RichContentSecure.aspx?function=RichContent&mode=secure" runat="server">
	<table width="100?" border="1">
		<tr>
			<th width="50?">Enter whatever markup you want</th>
			<th>Safe HTML rendered</th>
			<th>HTML encoded</th></tr>
		<tr>
			<td>
			    <asp:TextBox ID="txtInput" runat="server" TextMode="MultiLine" Width="400px" Height="150px" />
				<asp:Button ID="btnSubmit" runat="server" Text="Render" OnClick="btnSubmit_Click" /></br>
			</td>
			<td><asp:Label ID="lbMarkup" runat="server" /></td>
			<td><asp:Label ID="lbEncoder" runat="server" /></td>
		</tr>
	</table>
</form>
<!--#include virtual="/footer.aspx"-->