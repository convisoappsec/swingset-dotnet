using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace SwingsetDotNet
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string function = Request.QueryString.Get("function");
            string mode = Request.QueryString.Get("mode");
            string mymode = "";


            string[] paginas = {"AccessControlInsecure.aspx",
                                "AccessControlSecure.aspx",
                                "AccessControlTutorial.aspx",
                                "BrowserCachingInsecure.aspx",
                                "BrowserCachingSecure.aspx",
                                "BrowserCachingTutorial.aspx",
                                "CanonicalizeInsecure.aspx",
                                "CanonicalizeSecure.aspx",
                                "CanonicalizeTutorial.aspx",
                                "ChangeSessionIdentifierInsecure.aspx",
                                "ChangeSessionIdentifierSecure.aspx",
                                "ChangeSessionIdentifierTutorial.aspx",
                                "Default.aspx",
                                "EncodingInsecure.aspx",
                                "EncodingSecure.aspx",
                                "EncodingTutorial.aspx",
                                "EncryptionInsecure.aspx",
                                "EncryptionSecure.aspx",
                                "EncryptionTutorial.aspx",
                                "GUIDInsecure.aspx",
                                "GUIDSecure.aspx",
                                "GUIDTutorial.aspx",
                                "IntegrityInsecure.aspx",
                                "IntegritySecure.aspx",
                                "IntegrityTutorial.aspx",
                                "ObjectReferenceInsecure.aspx",
                                "ObjectReferenceSecure.aspx",
                                "ObjectReferenceTutorial.aspx",
                                "OutputUserInputInsecure.aspx",
                                "OutputUserInputSecure.aspx",
                                "OutputUserInputTutorial.aspx",
                                "RandomizerInsecure.aspx",
                                "RandomizerSecure.aspx",
                                "RandomizerTutorial.aspx",
                                "RichContentInsecure.aspx",
                                "RichContentSecure.aspx",
                                "RichContentTutorial.aspx",
                                "test.aspx",
                                "test1.aspx",
                                "ValidateUserInputInsecure.aspx",
                                "ValidateUserInputSecure.aspx",
                                "ValidateUserInputTutorial.aspx",
                                "XSSInsecure.aspx",
                                "XSSSecure.aspx",
                                "XSSTutorial.aspx"
                                };



            if (!String.IsNullOrEmpty(function))
            {
                   if (String.IsNullOrEmpty(mode) || mode.ToLower().Equals("tutorial"))
                        mymode = "Tutorial";
                    else if (mode.ToLower().Equals("secure"))
                        mymode = "Secure";
                    else if (mode.ToLower().Equals("insecure"))
                        mymode = "Insecure";
                    else
                        mymode = "Tutorial";

                string pname = function + mymode;

                if (paginas.Contains(pname + ".aspx"))
                {
                    if (String.IsNullOrEmpty(mode))
                        Response.Redirect(pname + ".aspx?function=" + function);
                    else
                        Response.Redirect(pname + ".aspx?function=" + function + "&mode=" + mymode);
                }else
                    Response.Redirect("Default.aspx");
            }
            else
                Response.Redirect("Default.aspx");
        }
    }
}
