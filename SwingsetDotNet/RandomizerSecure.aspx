<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RandomizerSecure.aspx.cs" Inherits="SwingsetDotNet.RandomizerSecure" ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<!--#include virtual="/header.aspx"--> 
<script type="text/javascript" src="javascript/jquery-1.2.6.js"></script>

<script>
//create random get parameter to prevent caching

function timestamp() {
      var nowDate = new Date();
      return nowDate.getTime();
}
function getRandomBoolean() {
$("#randomBoolean").load('ajax?function=Randomizer&mode=secure&method=getRandomBoolean&timestamp='+timestamp());
}
function getRandomFileName() {
$("#randomFileName").load("ajax?function=Randomizer&mode=secure&method=getRandomFileName&fileExtension="+document.secureDemo.fileExtension.value+'&timestamp='+timestamp());
}
function getRandomInteger() {
$("#randomInteger").load("ajax?function=Randomizer&mode=secure&method=getRandomInteger&min="+document.secureDemo.min.value+"&max="+document.secureDemo.max.value+'&timestamp='+timestamp());
}
function getRandomLong() {
$("#randomLong").load('ajax?function=Randomizer&mode=secure&method=getRandomLong&timestamp='+timestamp());
}
function getRandomReal() {
$("#randomReal").load("ajax?function=Randomizer&mode=secure&method=getRandomReal&minFloat="+document.secureDemo.minFloat.value+"&maxFloat="+document.secureDemo.maxFloat.value+'&timestamp='+timestamp());
}
function getRandomString() {
$("#randomString").load("ajax?function=Randomizer&mode=secure&method=getRandomString&length="+document.secureDemo.length.value+"&charSet="+document.secureDemo.charSet.value+'&timestamp='+timestamp());
}

</script>

<h2 align=center>Exercise</h2>
<form name="secureDemo" id="secureDemo" action="?function=Randomizer&mode=secure"  runat="server">
<p>The methods on this page are routed through ESAPI, which provides access to a cryptographically secure PRNG.</p>
	<div>
		<h4>Generate a random boolean</h4>
		Random Boolean: <font color="green"><span id="randomBoolean"><asp:Label ID="lbRandomBoolean" runat="server" /></span></font>
		<br /><br />
		<asp:Button ID="btnRandomBoolean" runat="server" OnClick="getRandomBoolean" Text="Submit" />
	</div>
	<div>
		<br /><h4>Specify a file extension in the text field below to generate an unguessable random file name</h4>
		File Extension:
		<asp:TextBox id="txtFileExtension" runat="server" />
		<asp:Button ID="Button1" runat="server" OnClick="getRandomFileName" Text="Submit" />
		<br /><br />Random File Name: <font color="green"><span id="randomFileName"><asp:Label ID="lblRandomFileName" runat="server" /></span></font>
	</div>
	<div>
		<br /><h4>Generate a random integer in between min and max parameters</h4>
		<p>Note: The random integer will be generated based on the given min and max, where min is inclusive and max is exclusive.</p>
		Min: <asp:TextBox id="txtMin" runat="server" />
		Max: <asp:TextBox id="txtMax" runat="server" />
		<asp:Button ID="Button2" runat="server" OnClick="getRandomInteger" Text="Submit" />
		<br /><br />Random Integer: <font color="green"><span id="randomInteger"><asp:Label ID="lblRandomInteger" runat="server" /></span></font>
	</div>
	<div>
		<br /><h4>Generate a random long value</h4>
		<asp:Button ID="Button3" runat="server" OnClick="getRandomLong" Text="Submit" height ="26px" />
		<br/><br/>Random Long: <font color="green"><span id="randomLong"><asp:Label ID="lblRandomLong" runat="server" /></span></font>
	</div>
	<div>
		<br /><h4>Generate a random real in between min and max parameters</h4>
		<p>Note: The random real will be generated based on the given min and max.</p>
		Min: <asp:TextBox id="txtMinFloat" runat="server" />
		Max: <asp:TextBox id="txtMaxFloat" runat="server" />		
		<asp:Button ID="Button4" runat="server" OnClick="getRandomReal" Text="Submit" />
		<br /><br />Random Real: <font color="green"><span id="randomReal"><asp:Label ID="lblRandomReal" runat="server" /></span></font>
	</div>
	<div>
		<br /><h4>Generate a random string of a desired length and character set.</h4>
		<p>Sample test values:&nbsp;&nbsp;Length=10&nbsp;&nbsp;Char Set= abc</p>
		Length: <asp:TextBox id="txtLength" runat="server" />
		Char Set: <asp:TextBox id="txtCharSet" runat="server" />
		<asp:Button ID="Button5" runat="server" OnClick="getRandomString" Text="Submit" />
		<br /><br />Random String: <font color="green"><span id="randomString"><asp:Label ID="lblRandomString" runat="server" /></span></font>
	</div>	
</form>
<!--#include virtual="/footer.aspx"-->