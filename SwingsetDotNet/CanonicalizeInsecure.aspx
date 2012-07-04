<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CanonicalizeInsecure.aspx.cs" Inherits="SwingsetDotNet.CanonicalizeInsecure" ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--#include virtual="/header.aspx"-->

<form id="formCanonicalize" action="" runat="server">
<h4>
    Enter malicious data in the textbox</h4>
<p class="newsItem">
    <code>EXAMPLE: <b>&lt;script&gt;alert(document.cookie)&lt;/script&gt;</b> </code>
</p>
<asp:textbox id="txtInput" textmode="MultiLine" width="300px" height="100px" runat="server" />
<br />
<br />
<asp:button id="btnSubmit" runat="server" text="Submit" onclick="btnSubmit_Click" PostBackUrl="ValidateUserInputInsecure.aspx?function=ValidateUserInput&mode=insecure"/>
</form>
<h4>
    Unvalidated output:
</h4>
<asp:label id="lbOutput" runat="server" />
<!--#include virtual="/footer.aspx"-->
