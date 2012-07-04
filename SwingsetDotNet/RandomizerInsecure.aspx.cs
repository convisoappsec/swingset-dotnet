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
    public partial class RandomizerInsecure : System.Web.UI.Page
    {
        static Random random = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getRandomBoolean(object sender, EventArgs e)
        {
            Response.ContentType.Equals("text/html");
            bool bRandomBoolean = RandomBool();
            lbRandomBoolean.Text= bRandomBoolean.ToString();
        }

        protected void getRandomInteger(object sender, EventArgs e)
        {
            string strRandomInteger = "";
            strRandomInteger = random.Next().ToString();
            Response.ContentType.Equals("text/html");
            lbRandomInteger.Text = strRandomInteger;            
        }

        protected void getRandomLong(object sender, EventArgs e)
        {
            long lRandomLong = RandomLong();
            Response.ContentType.Equals("text/html");
            lbRandomLong.Text = lRandomLong.ToString(); 
        }

        protected void getRandomReal(object sender, EventArgs e)
        {
            string strRandomReal = RandomFloat().ToString();
            Response.ContentType.Equals("text/html");
            lbRandomReal.Text = strRandomReal; 
        }



        public static bool RandomBool()
        {
            return (random.NextDouble() > 0.5);
        }

        public static float RandomFloat()
        {
            return random.Next(24) / ((float)(1 << 24));
        }

        public static long RandomLong()
        {
            return ((long)random.Next(32) << 32) + random.Next(32);
        }
    }
}
