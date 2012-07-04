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
using Owasp.Esapi.Interfaces;
using Owasp.Esapi.Codecs;
using Owasp.Esapi.ValidationRules;
using Owasp.Esapi.Configuration;
using System.Text.RegularExpressions;


namespace SwingsetDotNet
{
    public partial class RichContentSecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IEncoder encoder = Esapi.Encoder;
            String input = txtInput.Text;
            lbMarkup.Text = "testing";

            if(String.IsNullOrEmpty(input)){
                input = "<p>test <b>this</b> <script>alert(document.cookie)</script><i>right</i> now</p>";
              //  txtInput.Text = input;
                lbEncoder.Text = encoder.Encode(BuiltinCodecs.Html, input);

            }


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
