<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EncodingInsecure.aspx.cs" Inherits="SwingsetDotNet.EncodingInsecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"--> 

<hr><br><h2>Exercise: Enter Rich HTML Markup</h2>

<form action="EncodingInsecure.aspx?function=Encoding&mode=insecure" runat="server">
    Enter whatever input you want
    <asp:TextBox ID="txtInput" TextMode="MultiLine" Width="400px" Height="140px" runat="server" />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" style="height: 26px" /> <br />

</form>

<table border="1">
<tr><th>Encoding method</th><th>Encoded output</th></tr>
<tr><td>Unencoded</td><td><p><pre><asp:Label ID="lbEncode" runat="server" /></pre></td></tr>
</table>

<!--#include virtual="/footer.aspx"-->