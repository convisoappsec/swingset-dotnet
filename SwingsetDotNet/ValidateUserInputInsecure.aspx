<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidateUserInputInsecure.aspx.cs" Inherits="SwingsetDotNet.ValidateUserInputInsecure" ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"--> 

<h2 align="center">Exercise</h2>

<form id="frmValidateInsecure"  runat="server">
	<h4>Enter malicious data in the textbox</h4>
	<p class="newsItem">
	<code>
		EXAMPLE: <b>&lt;script&gt;alert(document.cookie)&lt;/script&gt;</b>
	</code>
	</p>
	<asp:TextBox ID="txtInput" TextMode="MultiLine" Width="300px" Height="100px" runat="server" />
	<br /><br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" PostBackUrl="ValidateUserInputInsecure.aspx?function=ValidateUserInput&mode=insecure"/> 
</form>
<h4>Unvalidated output: </h4><asp:Label ID="lbOutput" runat="server" />
    </div>
    </form>

<!--#include virtual="/footer.aspx"-->