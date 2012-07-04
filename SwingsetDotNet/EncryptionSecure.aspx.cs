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

namespace SwingsetDotNet
{
    public partial class EncryptionSecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                IEncryptor encryptor = Esapi.Encryptor;

                if (!String.IsNullOrEmpty(encrypted.Text))
                {
                    decrypted.Text = encryptor.Decrypt(encrypted.Text);
                    encrypted.Text = "";
                }
                else if (!String.IsNullOrEmpty(decrypted.Text))
                {
                    encrypted.Text = encryptor.Encrypt(decrypted.Text);
                    decrypted.Text = "";
                }
                else
                {
                    decrypted.Text = "Encrypt me right now";
                    encrypted.Text = "";
                }

            }
            else
            {
                decrypted.Text = "Encrypt me right now";
                encrypted.Text = "";
            }
        }

        protected void btnSubmitEncrypt_Click(object sender, EventArgs e)
        {

        }

        protected void btnSubmitDecrypt_Click(object sender, EventArgs e)
        {

        }
    }
}
