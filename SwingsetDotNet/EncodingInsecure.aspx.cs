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
    public partial class EncodingInsecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ( String.IsNullOrEmpty(txtInput.Text) ) txtInput.Text = "encode this string";
            lbEncode.Text = txtInput.Text;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
