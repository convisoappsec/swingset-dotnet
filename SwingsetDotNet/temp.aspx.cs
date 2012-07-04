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
    public partial class temp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp = "dummy style=xss:expression(alert('xss2.1'))";

            Response.Write("Tem onmouseover => " + temp.LastIndexOf("onmouseover"));
            Response.Write("<br/>");
            Response.Write("Tem expression => " + temp.LastIndexOf("expression"));
            Response.Write("<br/>");
            Response.Write("TAMANHO = " + temp.Length);
            Response.Write("<br/>");
            Response.Write("String name  = " + temp.Substring(0, 5));
            Response.Write("<br/>");
            Response.Write("String style = " + temp.Substring(6, 5));
            Response.Write("<br/>");
            Response.Write("String valor style = " + temp.Substring(12, 31));
        }
    }
}
