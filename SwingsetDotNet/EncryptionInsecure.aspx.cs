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
    public partial class EncryptionInsecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        	string strEncrypted = "";
            string strDecrypted = "Encrypt me right now";

            if (!String.IsNullOrEmpty(decrypted.Text) && !String.IsNullOrEmpty(encrypted.Text))
            {
                strDecrypted = decrypted.Text;
                strEncrypted = encrypted.Text;
            }
            else
            {
                decrypted.Text = strDecrypted;
                encrypted.Text = strEncrypted;
            }

        }

        protected void btnSubmitEncrypt_Click(object sender, EventArgs e)
        {
            formEnc.Action = "EncryptionInsecure.aspx?function=Encryption&mode=insecure";
        }

        protected void btnSubmitDecrypt_Click(object sender, EventArgs e)
        {            
            formEnc.Action = "EncryptionSecure.aspx?function=Encryption&mode=secure";
        }
    }
}
