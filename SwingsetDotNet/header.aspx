<% 
            string function = Request.QueryString["function"];
            string mode = Request.QueryString["mode"];
            string mymode = "";
            string pageHeader = "";
            if (!String.IsNullOrEmpty(function))
            {
                string func = "";
                switch (function)
                {
                    case "OutputUserInput":
                        func = function;
                        break;
                    case "RichContent":
                        func = function;
                        break;
                    case "ValidateUserInput":
                        func = function;
                        break;
                    case "Encoding":
                        func = function;
                        break;
                    case "Canonicalize":
                        func = function;
                        break;
                    case "XSS":
                        func = function;
                        break;
                    case "ChangePassword":
                        func = function;
                        break;
                    case "ChangeSessionIdentifier":
                        func = function;
                        break;
                    case "ObjectReference":
                        func = function;
                        break;
                    case "AccessControl":
                        func = function;
                        break;
                    case "Encryption":
                        func = function;
                        break;
                    case "Randomizer":
                        func = function;
                        break;
                    case "Integrity":
                        func = function;
                        break;
                    case "BrowserCaching":
                        func = function;
                        break;
                    case "GUID":
                        func = function;
                        break;
                    default:
                        func = "erro";
                        break;
                }

                string title = "ESAPI - " + func;
                pageHeader = "ESAPI - " + func;

                // Find the mode
                if (String.IsNullOrEmpty(mode) || mode.ToLower().Equals("tutorial"))
                    mymode = "Tutorial";
                else if (mode.ToLower().Equals("secure"))
                    mymode = "Secure";
                else if (mode.ToLower().Equals("insecure"))
                    mymode = "Insecure";
                else
                    mymode = "Tutorial";

                if (mymode.Equals("Secure"))
                {
                    title = title + ": Secured by ESAPI";
                    pageHeader = pageHeader + ": Secured by ESAPI";
                }
                else if (mymode.Equals("Insecure"))
                {
                    title = title + ": Insecure";
                    pageHeader = pageHeader + ": Insecure";
                }

                HeadMain.Title = title;


                if (func.Equals("erro"))
                    Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Redirect("Default.aspx");
            }

            //string color = "";
            //if (mymode.Equals("Insecure"))
            //{
            //    color = "#EECCCC";
            //}
            //else if (mymode.Equals("Secure"))
            //{
            //    color = "#BBDDBB";
            //}

            if (mymode.Equals("Tutorial"))
            {
                LinkTutorial.Font.Bold = true;
                LinkInsecure.Font.Bold = false;
                LinkSecure.Font.Bold = false;
            }
            else if (mymode.Equals("Insecure"))
            {
                LinkTutorial.Font.Bold = false;
                LinkInsecure.Font.Bold = true;
                LinkSecure.Font.Bold = false;
            }
            else if (mymode.Equals("Secure"))
            {
                LinkTutorial.Font.Bold = false;
                LinkInsecure.Font.Bold = false;
                LinkSecure.Font.Bold = true;
            }


            LinkTutorial.NavigateUrl = "~/main.aspx?function=" + function + "&mode=tutorial";
            LinkInsecure.NavigateUrl = "~/main.aspx?function=" + function + "&mode=insecure";
            LinkSecure.NavigateUrl = "~/main.aspx?function=" + function + "&mode=secure";
            lbPgHeader.Text = pageHeader;

%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="HeadMain">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body id="MyBody" runat="server" bgcolor="#EECCCC">
<div id="container">
	<div id="holder">
		<div id="logo"><img src="style/images/owasp-logo_130x55.png" width="130" height="55" alt="owasp_logo" title="owasp_logo"></div>
<h2><asp:Label ID="lbPgHeader" runat="server" /> </h2>
<div id="navigation">
    <asp:HyperLink ID="HOME" Text="Home" NavigateUrl="~/Default.aspx" runat="server" /> | 
    <asp:HyperLink ID="LinkTutorial" Text="Tutorial" runat="server" /> |
    <asp:HyperLink ID="LinkInsecure" Text="Insecure Demo" runat="server" /> | 
    <asp:HyperLink ID="LinkSecure" Text="Secure Demo " runat="server" />
</div>    
<div id="header"></div>
