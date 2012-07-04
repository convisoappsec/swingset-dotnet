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
    public partial class OutputUserInputInsecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString.Get("txtName");
            if (IsPostBack)
            {
                name = Server.HtmlEncode(txtName.Text);

                if (String.IsNullOrEmpty(name))
                    name = "anonymous";

                lbName.Text = name;
            }
            else
            {

                if (String.IsNullOrEmpty(name))
                {
                    name = "anonymous";
                }

                txtName.Text = name;

            }
        }
    }
}
