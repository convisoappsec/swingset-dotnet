<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XSSSecure.aspx.cs" Inherits="SwingsetDotNet.XSSSegure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"--> 

<h2 align="center">Excercise</h2>
<h4>Enter a Type/Regex and Invalid Data</h4>

<form action="XSSSecure.aspx?function=ValidateUserInput&&mode=secure" id="formm" runat="server">
Type/Regex: <asp:TextBox ID="txtType" runat="server"  /><br>
    <asp:TextBox ID="txtInput"  TextMode="MultiLine" Width="400px" Height="150px" runat="server" /><br>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
    onclick="btnSubmit_Click" style="height: 26px" /> 
</form>

<p>Canonical output: <asp:Label ID="lblCanonical" runat="server" /></p>

<hr />

<asp:Label ID="lblUserMsg" runat="server" />
<asp:Label ID="lblLogMsg" runat="server" />



<!--#include virtual="/footer.aspx"-->