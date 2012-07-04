<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OutputUserInputInsecure.aspx.cs" Inherits="SwingsetDotNet.OutputUserInputInsecure" ValidateRequest="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--#include virtual="/header.aspx"--> 
<script runat="server">
  void btnSubmit_Click(Object sender, EventArgs e)
  {
    // If ValidateRequest is false, then 'hello' is displayed
    // If ValidateRequest is true, then ASP.NET returns an exception
   // Response.Write(txtName.Text);
    lbName.Text = txtName.Text;
  }
 </script>


<h2>Exercise: Enter Malicious Input</h2>
<form id="form1" runat="server" action="OutputUserInputInsecure.aspx?function=OutputUserInput&mode=insecure">
    <p>Enter your name:</p>
    <asp:TextBox ID="txtName" runat="server"  />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />   
</form>

<p>Hello, <asp:Label ID="lbName" runat="server" />


<!--#include virtual="/footer.aspx"-->