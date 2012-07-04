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
    public partial class IntegritySecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string timer = "15";
            string plaintext = ""; //plaintext before sealing or after unsealing
            string toVerify = ""; //possible seal to verify
            string seal = ""; //sealed text

            IEncryptor encryptor = Esapi.Encryptor;

            //if we want to unseal something
            if (!String.IsNullOrEmpty(txtUnsealed.Text) && !String.IsNullOrEmpty(txtSealed.Text))
            {
                plaintext = encryptor.Unseal(txtSealed.Text);
                toVerify = txtSealed.Text;
                seal = txtSealed.Text;
            }
            //check that we're not sealing null or "" ("" can be sealed, we just do not do it here)
            if (!String.IsNullOrEmpty(txtUnsealed.Text))
                plaintext = txtUnsealed.Text;

            //check that we're sealing, not unsealing, and what we're sealing is not ""(again, we could seal "" - we just don't here)

            if (!String.IsNullOrEmpty(plaintext) && !String.IsNullOrEmpty(txtUnsealed.Text))
            {
                seal = encryptor.Seal(plaintext,encryptor.TimeStamp+1000 * int.Parse(timer));
                toVerify = seal;
            }
                        
            //check if we are going to verify a seal

            if (!String.IsNullOrEmpty(txtSealToVerify.Text))
                toVerify = txtSealToVerify.Text;

            bool verified = encryptor.VerifySeal(toVerify);


            txtSealed.Text = seal;
            lbVerified.Text = verified.ToString();
            txtUnsealed.Text = plaintext;
            txtSealToVerify.Text = toVerify;
            txtTimer.Text = timer;
        }

        protected void btnSubmitSeal_Click(object sender, EventArgs e)
        {
            form2.Action = "IntegritySecure.aspx?function=Integrity&mode=secure";
        }

        protected void btnSubmitUnseal_Click(object sender, EventArgs e)
        {
            form2.Action = "IntegritySecure.aspx?function=Integrity&mode=secure&unseal";
        }

        protected void btnSubmitVerify_Click(object sender, EventArgs e)
        {
            form2.Action = "IntegritySecure.aspx?function=Integrity&mode=secure";
        }
    }
}
