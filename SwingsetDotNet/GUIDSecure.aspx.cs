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
    public partial class GUIDSecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string randomGUID = "";
            IRandomizer randomizer = Esapi.Randomizer;
            randomGUID = randomizer.GetRandomGUID().ToString();
            String[] parts = randomGUID.Split(new char[] { '-' });
            aGUID.Text = parts[0] + "-" + parts[1] + "-" + parts[2] + "-" + parts[3];
            bGUID.Text = parts[4].Substring(0, 11);
            cGUID.Text = parts[4].Substring(11);

       }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
