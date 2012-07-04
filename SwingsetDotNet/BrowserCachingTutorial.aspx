<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowserCachingTutorial.aspx.cs" Inherits="SwingsetDotNet.BrowserCachingTutorial" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--#include virtual="/header.aspx"-->
<h2 align="center">Tutorial</h2>
<div>
	<h4>Browser Caches</h4>
	<p>
	If you examine the preferences dialog of any modern Web browser (like Internet Explorer, Safari or Mozilla), youÕll probably notice a ÒcacheÓ setting. This lets you set aside a section of your computerÕs hard disk to store representations that youÕve seen, just for you. The browser cache works according to fairly simple rules. It will check to make sure that the representations are fresh, usually once a session (that is, the once in the current invocation of the browser).
	</p>
	<p>
	This cache is especially useful when users hit the ÒbackÓ button or click a link to see a page theyÕve just looked at. Also, if you use the same navigation images throughout your site, theyÕll be served from browsersÕ caches almost instantaneously.
	</p>
	<p>
	<h4>Threats posed by caching</h4>

	<p>Web browsers store the results of browsing in a cache or store. If the same web page is requested again, the web browser can fetch it directly from the cache rather than needing to retrieve it from the network. This is much faster and improves the user's browsing experience.</p>

	<p>Unfortunately, critically important information can also be stored in the cache and misused by hackers or simply unauthorised users within your business.</p>

	<p>For example, if you logged into a sensitive application such as your payroll using your username and password and reviewed information there, the data displayed on the screen would be cached by the web browser. If you then logged off another user could log on to the same PC and read that information from the web cache on the PC without needing to log in to the payroll.</p>

	<p>This problem can be avoided by correct web application design. The designer should ensure that the web browser is instructed not to cache sensitive data. This is not a perfect solution, but it will remove the main threat.</p>

	<p>As a business manager, you should ensure that applications you acquire do not carry this threat by asking the supplier about web-caching. For example: "Does your application recognise the potential threat of caching web data and prevent it?"</p>
	<h4>Using ESAPI to prevent browser Caching</h4>
	<p class="newsItem">
	<code>
	ESAPI::getHttpUtilities()->setNoCacheHeaders(ESAPI::getHttpUtilities()->getCurrentResponse());
	</code>
	</p>
	<p>
	Set headers to protect sensitive information against being cached in the browser. Developers should make this call for any HTTP responses that contain any sensitive data that should not be cached within the browser or any intermediate proxies or caches. Implementations should set headers for the expected browsers. The safest approach is to set all relevant headers to their most restrictive setting. These include: 
 	</p>
 	Cache-Control: no-store
 	<br />Cache-Control: no-cache
 	<br />Cache-Control: must-revalidate
 	<br />Expires: -1
 	
	
</div>
<!--#include virtual="/footer.aspx"-->
