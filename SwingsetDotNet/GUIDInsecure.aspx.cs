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
    public partial class GUIDInsecure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String[] GUIDArr = new String[5];
                String GUID = System.Guid.NewGuid().ToString();
                GUIDArr = GUID.Split(new char[] { '-' });

                GUID1.Text = GUIDArr[0];
                GUID2.Text = GUIDArr[1];
                GUID3.Text = GUIDArr[2];
                GUID4.Text = GUIDArr[3];
                GUID5.Text = GUIDArr[4];
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
