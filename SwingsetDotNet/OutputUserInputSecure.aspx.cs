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

namespace SwingsetDotNet
{
    public partial class OutputUserInputSecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = txtName.Text;

            if (String.IsNullOrEmpty(name))
                name = "anonymous";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            IEncoder encoder = Esapi.Encoder;

            lbName.Text = encoder.Encode(BuiltinCodecs.Html, name);

            string encodeName = encoder.Encode(BuiltinCodecs.Html, name);
            encodeName = encodeName.Replace("&", "&amp;");

            lbSource.Text = encodeName;
        }


    }

}
