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
using Owasp.Esapi;
using Owasp.Esapi.Errors;
using Owasp.Esapi.Interfaces;
using Owasp.Esapi.Configuration;
using Owasp.Esapi.Codecs;


namespace SwingsetDotNet
{
    public partial class CanonicalizeSecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtInput.Text))
                txtInput.Text = "%2&#x35;2%3525&#x32;\\u0036lt;\r\n\r\n%&#x%%%3333\\u0033;&%";

            string input = txtInput.Text;
            string canonical = "";
            // do it in strict mode just to get the warnings
            IEncoder encoder = Esapi.Encoder;
            try
            {
                canonical = encoder.Canonicalize(input, true);
            }
            catch (IntrusionException ie)
            {
                lblUser.Text = ie.UserMessage;
                lblLog.Text = ie.LogMessage;
            }

            txtInput.Text = input;
            txtCanonical.Text = canonical;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
