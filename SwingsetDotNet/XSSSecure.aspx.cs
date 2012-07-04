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
using Owasp.Esapi.Errors;
using Owasp.Esapi.ValidationRules;

namespace SwingsetDotNet
{
    public partial class XSSSegure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtType.Text)) txtType.Text = "SafeString";
            if (String.IsNullOrEmpty(txtInput.Text)) txtInput.Text = "type input here.";


            IEncoder encoder = Esapi.Encoder;
            Owasp.Esapi.Interfaces.IValidator validator = Esapi.Validator;

            String input = txtInput.Text.Trim();
            String strtype = txtType.Text;

            if (!String.IsNullOrEmpty(input) && !String.IsNullOrEmpty(strtype))
            {

                try
                {
                    int max = 200;
                    String context = "Swingset Validation Secure Exercise";
                    String valid = getValidInput(context, input, strtype, max, false);

                    lblCanonical.Text = encoder.Encode(BuiltinCodecs.Html, input);
                    txtInput.Text = encoder.Encode(BuiltinCodecs.Html, input);
                }
                catch (ValidationException ve)
                {
                    lblUserMsg.Text = ve.UserMessage;
                    lblLogMsg.Text = ve.Message;
                }
                catch (IntrusionException ie)
                {
                    lblUserMsg.Text = ie.UserMessage;
                    lblLogMsg.Text = ie.Message;
                }

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Console.Write(true);
        }
        public bool isValidInput(string context, string input, string type, int maxLength, Boolean allowNull)
        {
            try
            {
                getValidInput(context, input, type, maxLength, allowNull);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }


        public string getValidInput(string context, string input, string type, int maxLength, Boolean allowNull)
        {
            StringValidationRule rvr = new StringValidationRule();

            String p = "^[\\p{L}\\p{N}.]{0,1024}$";

            if (p != null)
            {
                rvr.AddWhitelistPattern(p);
            }
            else
            {
                rvr.AddWhitelistPattern(type);
            }
            rvr.MaxLength = maxLength;
            rvr.AllowNullOrEmpty = allowNull;
            bool valid = rvr.IsValid(input);
            IEncoder encoder = Esapi.Encoder;

            String canonical = encoder.Canonicalize(input, true);
            return canonical;

        }
    }
}
