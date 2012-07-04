<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IntegritySecure.aspx.cs" Inherits="SwingsetDotNet.IntegritySecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"-->

<h2>Enter Malicious Data to Seal</h2>
<table width="100%" border="1">
<form id="form2" runat="server">
<tr>
	<th width="50%">Enter something to seal</th>
</tr>
<tr>
	<td>
	    <asp:Textbox id="txtUnsealed" textmode="MultiLine" width="750px" height="50px" runat="server" /><br />Seal will be valid for: 
	    <asp:TextBox ID="txtTimer" runat="server" MaxLength="7" />seconds.
	    <asp:Button ID="btnSubmit" runat="server" Text="seal" onclick="btnSubmitSeal_Click" />   
    </td>
</tr>
<th>This is the sealed text</th>
<tr>
	<td>
	    <asp:Textbox id="txtSealed" textmode="MultiLine" width="750px" height="50px" runat="server" /><br />
	    <asp:Button ID="Button1" runat="server" Text="unseal" onclick="btnSubmitUnseal_Click" /> 
	</td>
</tr>
<tr>
	<th>Seal to verify</th>
</tr>
<tr>
	<td>
	    <asp:Textbox id="txtSealToVerify" textmode="MultiLine" width="750px" height="50px" runat="server" /><br />
	    <asp:Button ID="Button2" runat="server" Text="verify" onclick="btnSubmitVerify_Click" /> 
	</td>
</tr>
<th>Result of Seal Verification</th>
<tr>
	<td>Verification:<asp:Label ID="lbVerified" runat="server" /></td>
</tr>
<br>    
</form>
</table>
<!--#include virtual="/footer.aspx"-->

