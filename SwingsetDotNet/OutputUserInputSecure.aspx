<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OutputUserInputSecure.aspx.cs" Inherits="SwingsetDotNet.OutputUserInputSecure" ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--#include virtual="/header.aspx"--> 
<h2>Exercise: Enter Malicious Input</h2>
<form id="form2" runat="server" action="OutputUserInputSecure.aspx?function=OutputUserInput&mode=secure">
    <p>Enter your name:</p>
    <asp:TextBox ID="txtName" runat="server"  />
    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
</form>
<p>Hello, <asp:Label ID="lbName" runat="server" /></p>

<code>
Source : <asp:Label ID="lbSource" runat="server" />
</code>
<!--#include virtual="/footer.aspx"-->

