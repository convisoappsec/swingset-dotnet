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
using System.Web.SessionState;    

namespace SwingsetDotNet
{
    public partial class ChangeSessionIdentifierSecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IHttpUtilities httpUtilities =  Esapi.HttpUtilities;
            httpUtilities.ChangeSessionIdentifier();
            SessionIDManager manager = new SessionIDManager();
            String orig = manager.GetSessionID(HttpContext.Current);

            if (String.IsNullOrEmpty(orig))
            {
                string newSessionId = manager.CreateSessionID(HttpContext.Current);
                Session["cookie"] = newSessionId; 
            }
        }
    }
}
