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
    public partial class EncodingSecure : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            IEncoder encoder = Esapi.Encoder;
            if (String.IsNullOrEmpty(txtInput.Text)) 
                txtInput.Text = "encode 'this' <b>string</b> null  byte";

            string myInput = txtInput.Text;
            lblUnencoded.Text = myInput;
            Label1.Text = encoder.Encode(BuiltinCodecs.Html,myInput);
            Label2.Text = encoder.Encode(BuiltinCodecs.HtmlAttribute, myInput);
            Label3.Text = encoder.Encode(BuiltinCodecs.JavaScript, myInput);
            Label4.Text = encoder.Encode(BuiltinCodecs.VbScript, myInput);
            Label5.Text = encoder.Encode(BuiltinCodecs.Url,myInput);
            Label6.Text = encoder.Encode(BuiltinCodecs.Base64,myInput);
            Label7.Text = encoder.Encode(BuiltinCodecs.Xml,myInput);
            Label8.Text = encoder.Encode(BuiltinCodecs.XmlAttribute, myInput);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
