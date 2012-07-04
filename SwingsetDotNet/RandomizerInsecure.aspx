<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RandomizerInsecure.aspx.cs" Inherits="SwingsetDotNet.RandomizerInsecure" ValidateRequest="false"%>

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
        $("#randomBoolean").load('ajax?function=Randomizer&mode=insecure&method=getRandomBoolean&timestamp=' + timestamp());
    }
    function getRandomInteger() {
        $("#randomInteger").load("ajax?function=Randomizer&mode=insecure&method=getRandomInteger&timestamp=" + timestamp());
    }
    function getRandomLong() {
        $("#randomLong").load('ajax?function=Randomizer&mode=insecure&method=getRandomLong&timestamp=' + timestamp());
    }
    function getRandomReal() {
        $("#randomReal").load("ajax?function=Randomizer&mode=insecure&method=getRandomReal&minFloat=&timestamp=" + timestamp());
    }
</script>

<h2 align=center>Exercise</h2>
<form id="formInsecureDemo" name="insecureDemo" action="?function=Randomizer&mode=insecure" runat="server">
<input type="hidden" id="method" name="method"/>
<p>Some of the functionality found in ESAPI's Randomizer can be found in the <b>Random</b> class, but the functionality is limited.</p>
	<div>
		<h4>Generate a random boolean using nextBoolean() method of Random class</h4>
		<p>Returns the next pseudorandom, uniformly distributed boolean value from this random number generator's sequence. The general contract of nextBoolean is that one boolean value is pseudorandomly generated and returned. The values true and false are produced with (approximately) equal probability. </p>
		Random Boolean: <font color="green"><span id="randomBoolean"><asp:Label ID="lbRandomBoolean" runat="server" /></span></font>
		<br /><br /> <asp:Button ID="btnRandomBoolean" runat="server" OnClick="getRandomBoolean" Text="Get Random Boolean" />
	</div>
	
	<div>
		<br /><h4>Generate a random filename</h4>
		<p>No such utility function exists in Random
		Random</p>
	</div>
	
	<div>
		<br /><h4>Generate a random GUID</h4>
		<p>No such utility function exists in Random</p>
	</div>
	
	<div>
		<br /><h4>Generate a random integer</h4>
		<p>The default <b>nextInt()</b> function of Random class does not accept min or max arguments.</p>
		Random Integer: <font color="green"><span id="randomInteger" ><asp:Label id="lbRandomInteger" runat="server" /></span></font>
		<br /><br /><asp:Button ID="Button1" runat="server" OnClick="getRandomInteger" Text="Get Random Integer" />
	</div>
	
	<div>
		<br /><h4>Generate a random long value using nextLong()</h4>
		<p>Because class Random uses a seed with only 48 bits, this algorithm will not return all possible long values. </p>
		Random Long: <font color="green"><span id="randomLong" ><asp:Label id="lbRandomLong" runat="server" /></span></font>
		<br /><br /><asp:Button ID="Button2" runat="server" OnClick="getRandomLong" Text="Get Random Long" />
	</div>
	
	<div>
		<br /><h4>Generate a random real using nextFloat()</h4>
		<p>Returns the next pseudorandom, uniformly distributed float value between 0.0 and 1.0 from this random number generator's sequence.</p>
		<p><b>Limitation: </b>The <b>nextFloat()</b> method of Random class generates a number between 0.0 and 1.0 and does not accept min or max arguments.</p>
		Random Real: <font color="green"><span id="randomReal" ><asp:Label id="lbRandomReal" runat="server" /></span></font>
		<br /><br /><asp:Button ID="Button3" runat="server" OnClick="getRandomReal" Text="Get Random Real" />
	</div>
	
	<div>
		<br /><h4>Generate a random string of a desired length and character set</h4>
		<p>No such utility function exists in Random</p>
	</div>	
	
</form>
<!--#include virtual="/footer.aspx"-->