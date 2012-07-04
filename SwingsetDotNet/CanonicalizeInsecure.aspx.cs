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
    public partial class CanonicalizeInsecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string output = "";
            if (String.IsNullOrEmpty(lbOutput.Text)) output = lbOutput.Text;

            if (String.IsNullOrEmpty(txtInput.Text)) txtInput.Text = "type input here";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
