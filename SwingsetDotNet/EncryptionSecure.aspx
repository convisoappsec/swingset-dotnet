<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EncryptionSecure.aspx.cs" Inherits="SwingsetDotNet.EncryptionSecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"--> 

<hr><br><h2>Exercise: do something</h2>

<hr><br><h2>Encrypt and Decrypt</h2>
<form id="formSec" runat="server">
<table width="100%" border="1">
    <tr><th width="50%">Enter something to encrypt</th><th>Enter something to decrypt</th></tr>
    <tr>
        <td>
            <asp:TextBox ID="decrypted" runat="server" width="400px" height="150px"  />
            <asp:Button ID="btnSubmit" runat="server" Text="encrypt" onclick="btnSubmitEncrypt_Click" /><br />
        </td>
        <td>
            <asp:TextBox ID="encrypted" runat="server" width="400px" height="150px" />
            <asp:Button ID="btnSubmit1" runat="server" Text="decrypt" 
                onclick="btnSubmitDecrypt_Click" style="height: 26px; width: 63px" />  
            <br />
        </td>
    </tr>
</table>    
</form>

<!--#include virtual="/footer.aspx"-->   