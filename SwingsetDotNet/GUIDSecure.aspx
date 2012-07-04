<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUIDSecure.aspx.cs" Inherits="SwingsetDotNet.GUIDSecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"-->

<form id="form1" runat="server">
<h2 align="center">Exercise</h2>	
	<div>
		</br><h3>Generate a random GUID using ESAPI - String GetRandomGUID().ToString()</h3>
		<table align="center" border="1" width="80%">
			<tr><th align="center">Random GUID</th></tr>
			<tr>
				<td align="center">
				<font color="green"><asp:Label ID="aGUID" runat="server" /><br /><asp:Label ID="bGUID" runat="server" /><br /><asp:Label ID="cGUID" runat="server" /></font>
				</td>
			</tr>
			<tr><td align="center"><asp:Button ID="btnSubmit1" runat="server" Text="New GUID" onclick="btnSubmit_Click" postbackurl="main.aspx?function=GUID&mode=secure"/></td></tr>
		</table>
	</div>
</form>    
<!--#include virtual="/footer.aspx"-->