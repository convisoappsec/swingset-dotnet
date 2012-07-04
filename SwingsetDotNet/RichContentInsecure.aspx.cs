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
    public partial class RichContentInsecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {    
            string input = txtInput.Text;
            if(String.IsNullOrEmpty(input))
                input = "<p>test <b>this</b> <script>alert(document.cookie)</script><i>right</i> now</p>";

           
            lbMarkup.Text = input.Replace("<script>", "");
            txtInput.Text = input;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string input = txtInput.Text;
                if (String.IsNullOrEmpty(input))
                    input = "<p>test <b>this</b> <script>alert(document.cookie)</script><i>right</i> now</p>";

                lbMarkup.Text = input.Replace("<script>", "");
                txtInput.Text = input;
            }
        }
    }
}
