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
    public partial class BrowserCachingInsecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IRandomizer random = Esapi.Randomizer;
            rando11.Text = random.GetRandomInteger(100000, 900000).ToString();
            rando12.Text = random.GetRandomInteger(10, 100).ToString();

            rando21.Text = random.GetRandomInteger(100000, 900000).ToString();
            rando22.Text = random.GetRandomInteger(10, 100).ToString();

            rando31.Text = random.GetRandomInteger(100000, 900000).ToString();
            rando32.Text = random.GetRandomInteger(10, 100).ToString();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
        }
    }
}
